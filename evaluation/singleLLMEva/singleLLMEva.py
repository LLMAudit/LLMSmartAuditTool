import json
import csv
import os
import time
import glob # Import the glob module to find files
from openai import OpenAI # Assuming you have the openai library installed

def get_vulnerabilities_from_llm(contract_code: str, system_prompt: str, api_key: str):
    """
    Calls an LLM (GPT-4o) to list vulnerabilities in a Solidity smart contract
    using a specified system prompt.

    Args:
        contract_code (str): The Solidity smart contract code to analyze.
        system_prompt (str): The specific system message to use for the LLM.
        api_key (str): Your OpenAI API key.

    Returns:
        str: The LLM's response, or an error message.
    """
    try:
        # Initialize OpenAI client
        client = OpenAI(api_key=api_key)

        completion = client.chat.completions.create(
            model="gpt-4o",
            messages=[
                {"role": "system", "content": system_prompt}, # Use the provided system_prompt
                {"role": "user", "content": contract_code}
            ]
        )

        if completion.choices and completion.choices[0].message and completion.choices[0].message.content:
            return completion.choices[0].message.content
        else:
            return "LLM response was empty or malformed."

    except Exception as e:
        return f"An error occurred during LLM call: {e}"


def save_to_csv(data: list[dict], output_file: str = "vulnerability_report_with_prompts.csv"):
    """
    Saves a list of dictionaries to a CSV file.

    Args:
        data (list[dict]): A list of dictionaries, where each dictionary represents a row.
                           Each dictionary should have consistent keys for column headers.
        output_file (str): The name of the CSV file to save the data to.
    """
    if not data:
        print("No data to save to CSV.")
        return

    # Get column headers from the keys of the first dictionary
    fieldnames = data[0].keys()

    try:
        with open(output_file, 'w', newline='', encoding='utf-8') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

            writer.writeheader()
            writer.writerows(data)

        print(f"Data successfully saved to '{output_file}'")
    except IOError as e:
        print(f"Error writing to CSV file '{output_file}': {e}")
    except Exception as e:
        print(f"An unexpected error occurred while saving to CSV: {e}")
        

def load_prompts_from_json(file_path="advanced_prompts.json"):
    """
    Loads advanced prompts from a JSON file.

    Args:
        file_path (str): The path to the JSON file containing the prompts.

    Returns:
        dict: A dictionary of prompts, or an empty dictionary if an error occurs.
    """
    try:
        with open(file_path, 'r') as f:
            return json.load(f)
    except FileNotFoundError:
        print(f"Error: Prompt file not found at '{file_path}'. Please ensure 'advanced_prompts.json' exists.")
        return {}
    except json.JSONDecodeError:
        print(f"Error: Could not decode JSON from '{file_path}'. Please ensure it's valid JSON.")
        return {}
    except Exception as e:
        print(f"An unexpected error occurred while loading prompts: {e}")
        return {}
    

def append_to_csv(data_row: dict, output_file: str):
    """
    Appends a single dictionary (row) to a CSV file.
    Writes headers only if the file does not exist.

    Args:
        data_row (dict): A dictionary representing a single row of data.
        output_file (str): The name of the CSV file to append the data to.
    """
    # Define fieldnames explicitly to ensure consistent order in CSV
    fieldnames = [
        "Contract_File_Name", # New field for contract file name
        "Phase_Name",
        "System_Prompt_Used",
        "Contract_Code_Snippet",
        "LLM_Response"
    ]

    file_exists = os.path.exists(output_file)

    try:
        with open(output_file, 'a', newline='', encoding='utf-8') as csvfile:
            # Initialize DictWriter with extrasaction='ignore' to prevent errors
            # if data_row contains fields not in fieldnames.
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames, extrasaction='ignore')

            if not file_exists: # Write header only if file is new
                writer.writeheader()

            writer.writerow(data_row) # Write the single data row

        print(f"Appended data to '{output_file}'")
    except IOError as e:
        print(f"Error writing to CSV file '{output_file}': {e}")
    except Exception as e:
        print(f"An unexpected error occurred while saving to CSV: {e}")
        
if __name__ == "__main__":
    # --- Configuration ---
    # IMPORTANT: Replace "YOUR_OPENAI_API_KEY" with your actual OpenAI API key.
    # For production, consider loading this from environment variables (e.g., os.getenv("OPENAI_API_KEY"))
    # or a secure configuration file.
    OPENAI_API_KEY = "" # <<<--- REPLACE THIS!

    # Path to your advanced prompts JSON file
    PROMPTS_FILE = "advanced_prompts.json"
    
    # Input directory for Solidity contract files
    CONTRACTS_DIR = "./contract/47/contracts"
    # Output directory for results
    RESULTS_DIR = "./result/47"
    
    # Ensure the results directory exists
    os.makedirs(RESULTS_DIR, exist_ok=True)

    # --- Load Prompts ---
    advanced_prompts = load_prompts_from_json(PROMPTS_FILE)

    if not advanced_prompts:
        print("No prompts loaded. Exiting.")
    else:
        # Find all .sol files in the specified contract directory
        contract_files = glob.glob(os.path.join(CONTRACTS_DIR, "*.sol"))

        if not contract_files:
            print(f"No .sol files found in '{CONTRACTS_DIR}'. Exiting.")
        else:
            for contract_file_path in contract_files:
                contract_file_name = os.path.basename(contract_file_path)
                # Construct the unique output CSV file name for this contract
                contract_base_name = os.path.splitext(contract_file_name)[0]
                output_csv_filename = f"llm_vulnerability_analysis_{contract_base_name}.csv"
                output_csv_file_path = os.path.join(RESULTS_DIR, output_csv_filename)

                print(f"\n--- Processing Contract: {contract_file_name} ---")

                # Before processing each contract, remove its specific CSV file if it exists
                if os.path.exists(output_csv_file_path):
                    os.remove(output_csv_file_path)
                    print(f"Removed existing file: {output_csv_file_path}")

                try:
                    with open(contract_file_path, 'r', encoding='utf-8') as f:
                        contract_code = f.read()
                except Exception as e:
                    print(f"Error reading contract file '{contract_file_name}': {e}. Skipping this contract.")
                    continue

                # --- Iterate through phases (top-level keys) and their single prompt string ---
                for phase_name, system_prompt in advanced_prompts.items():
                    print(f"\n--- Processing Phase: {phase_name} for {contract_file_name} ---")

                    # Check if the prompt string is empty for this phase
                    if not system_prompt:
                        print(f"  No prompt string found for phase '{phase_name}'. Skipping LLM call for this phase.")
                        continue # Skip to the next phase if the prompt string is empty

                    print(f"  - Using prompt for phase '{phase_name}'...")

                    # Call LLM with the specific system prompt and new parameters
                    llm_response_text = get_vulnerabilities_from_llm(
                        contract_code=contract_code,
                        system_prompt=system_prompt,
                        api_key=OPENAI_API_KEY
                    )
                    print(f"    LLM Response (first 100 chars): {llm_response_text[:100]}...")

                    # Prepare the single row of data for this iteration
                    current_row_data = {
                        "Contract_File_Name": contract_file_name, # Add contract file name
                        "Phase_Name": phase_name,
                        "System_Prompt_Used": system_prompt,
                        "Contract_Code_Snippet": contract_code[:200] + "...", # Truncate for CSV preview
                        "LLM_Response": llm_response_text
                    }

                    # Append this single row to the CSV file immediately
                    append_to_csv(current_row_data, output_csv_file_path)

                    # Introduce a 10-second sleep after each LLM call and CSV write
                    print("    Sleeping for 10 seconds...")
                    time.sleep(10)

            print(f"\nAll LLM results for '{contract_file_name}' have been saved to '{output_csv_file_path}'.")