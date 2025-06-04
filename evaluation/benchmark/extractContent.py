import csv
import os
import tiktoken

def extract_sol_contents(folder_path, output_csv_path):
    # Initialize the tokenizer for the specific model
    encoding = tiktoken.encoding_for_model("gpt-3.5-turbo")

    # Create a CSV file and write the headers
    with open(output_csv_path, mode='w', newline='', encoding='utf-8') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(['nameid', 'content', 'tokens', 'LoC'])

        # Walk through the folder
        for root, dirs, files in os.walk(folder_path):
            # Filter and process only .sol files
            for file in files:
                if file.endswith('.sol'):
                    file_path = os.path.join(root, file)
                    # Read the content of the .sol file
                    with open(file_path, 'r', encoding='utf-8') as file:
                        content = file.read()
                        # Count lcdines
                        lines_of_code = content.count('\n') + 1  # Adding one for the last line if it doesn't end with a newline
                        # Count tokens
                        tokens = len(encoding.encode(content))
                        # Write the file name, content, token count, and line count to the CSV
                        writer.writerow([os.path.basename(file_path), content, tokens, lines_of_code])


# Usage
folder_path = './dataset/'  # Change this to the path of your folder containing .sol files
output_csv_path = './LabeledDataset.csv'        # Desired path for the output CSV file
extract_sol_contents(folder_path, output_csv_path)
