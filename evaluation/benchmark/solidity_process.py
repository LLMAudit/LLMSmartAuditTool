import csv
import re

def process_solidity_code(code):
    lines = code.split("\n")
    processed_lines = [
        line.strip() 
        for line in lines 
        if not line.strip().startswith("//") 
        and not line.strip().startswith("/*") 
        and not line.strip().startswith("*")
    ]
    return "\n".join([line for line in processed_lines if line])
    
    return text.strip()

def process_csv(input_file, output_file):
    with open(input_file, 'r', newline='') as infile, open(output_file, 'w', newline='') as outfile:
        reader = csv.DictReader(infile)
        fieldnames = reader.fieldnames

        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()

        for row in reader:
            if 'content' in row:
                row['content'] = process_solidity_code(row['content'])
            writer.writerow(row)

if __name__ == "__main__":
    input_file = "LabeledDataset.csv"
    output_file = "LabeledDataset_output.csv"
    process_csv(input_file, output_file)
    print(f"Processed {input_file} and saved results to {output_file}")