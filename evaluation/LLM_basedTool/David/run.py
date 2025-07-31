import os
from openai import OpenAI
import csv # Import the csv module
import time

# --- Configuration ---
API_KEY = "sk-proj-XXXX" # Renamed to API_KEY for global constant style

# Define input and output paths
CONTRACT_FOLDER_PATH = "./simpleContract/1/" # Now points to a folder
OUTPUT_RESULTS_DIR = "./simpleResult/1/"

def run_two_stage_audit(contracts_folder_path: str, output_results_dir: str, api_key: str):
    """
    Args:
        contracts_folder_path (str): The path to the folder containing smart contract files (.sol).
        output_results_dir (str): The base directory where audit results will be saved.
        api_key (str): Your OpenAI API key.
    """
    # Initialize the OpenAI client
    try:
        client = OpenAI(api_key=api_key)
    except Exception as e:
        print(f"Error initializing OpenAI client: {e}")
        print("Please ensure your API key is correct and you have an internet connection.")
        return # Exit function if client initialization fails

    # --- Ensure Output Base Directory Exists ---
    os.makedirs(output_results_dir, exist_ok=True)
    print(f"Ensured base output directory exists: {output_results_dir}")

    # --- Find and Process Smart Contract Files ---
    contract_files = [f for f in os.listdir(contracts_folder_path) if f.endswith('.sol')]

    if not contract_files:
        print(f"No Solidity files (.sol) found in {contracts_folder_path}. Exiting.")
        return

    print(f"Found {len(contract_files)} Solidity files in {contracts_folder_path}.")

    for contract_filename in contract_files:
        full_contract_path = os.path.join(contracts_folder_path, contract_filename)
        contract_name = os.path.splitext(contract_filename)[0] # Get name without extension
        
        # Create a specific output directory for this contract
        current_contract_output_dir = os.path.join(output_results_dir, contract_name)
        os.makedirs(current_contract_output_dir, exist_ok=True)
        print(f"\n--- Processing contract: {contract_filename} ---")
        print(f"Results will be saved to: {current_contract_output_dir}")

        # --- Load Smart Contract Code ---
        contract_code = ""
        try:
            with open(full_contract_path, 'r') as f:
                contract_code = f.read()
            print(f"Successfully loaded contract code from: {full_contract_path}")
        except Exception as e:
            print(f"Error reading contract code file {full_contract_path}: {e}")
            continue # Skip to the next contract if reading fails

        # --- Stage 1: Initial Audit Request ---
        system_prompt_stage1 = "You are an AI smart contract auditor that excels at finding vulnerabilities in blockchain smart contracts."
        user_prompt_stage1 = f"""
        You are the best solidity security expert in the world. Perform a proper security audit of this contract, identify critical issues that can lead to loss of funds, pay special attention to logic issues. It makes sense to audit each function independently and then see how they link to other functions. First, read each function critically and identify critical security issues that can lead to loss of funds.
        {contract_code}
        """

        # Initialize messages list for the conversation
        messages = [
            {"role": "system", "content": system_prompt_stage1},
            {"role": "user", "content": user_prompt_stage1}
        ]

        print("--- Sending Stage 1 Request ---")
        response_stage1 = "" # Initialize to empty string
        try:
            completion_stage1 = client.chat.completions.create(
                model="gpt-4o-mini",
                messages=messages
            )

            response_stage1 = completion_stage1.choices[0].message.content
            print("\n--- Stage 1 Response ---")
            print(response_stage1)

            # Append the assistant's response to maintain conversation history
            messages.append({"role": "assistant", "content": response_stage1})

        except Exception as e:
            print(f"Error during Stage 1 API call for {contract_filename}: {e}")
            continue # Skip to the next contract if Stage 1 API call fails

        # --- Stage 2: Follow-up Request ---
        user_prompt_stage2 = "Can you check each function independently one after the other?"

        # Append the second user prompt to the messages list
        messages.append({"role": "user", "content": user_prompt_stage2})

        print("\n--- Sending Stage 2 Request ---")
        response_stage2 = "" # Initialize to empty string
        try:
            completion_stage2 = client.chat.completions.create(
                model="gpt-4o-mini",
                messages=messages # Send the full conversation history
            )

            response_stage2 = completion_stage2.choices[0].message.content
            print("\n--- Stage 2 Response ---")
            print(response_stage2)

        except Exception as e:
            print(f"Error during Stage 2 API call for {contract_filename}: {e}")
            continue # Skip to the next contract if Stage 2 API call fails

        # --- Save all results to a single CSV file ---
        combined_output_path = os.path.join(current_contract_output_dir, "audit_results.csv")
        try:
            with open(combined_output_path, 'w', newline='', encoding='utf-8') as csvfile:
                csv_writer = csv.writer(csvfile)
                # Write header row
                csv_writer.writerow(["Contract Code", "Stage 1 Audit Result", "Stage 2 Audit Result"])
                # Write data row
                csv_writer.writerow([contract_code, response_stage1, response_stage2])
            print(f"All audit results for {contract_filename} saved to: {combined_output_path}")
        except Exception as e:
            print(f"Error saving combined CSV for {contract_filename}: {e}")
        
        time.sleep(10)


    print("\n--- All two-stage processes completed ---")


# Define input and output paths
CONTRACT_CODE_PATH = "./SWC-100/unsafe_delegatecall/" # Assuming the contract file is named contract.sol
OUTPUT_RESULTS_DIR = "./SWCResult/unsafe_delegatecall/"

# --- Run the audit ---
if __name__ == "__main__":
    run_two_stage_audit(CONTRACT_CODE_PATH, OUTPUT_RESULTS_DIR, API_KEY)