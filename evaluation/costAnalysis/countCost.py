import os
import glob
import pandas as pd

# Define the folder containing the CSV files
csv_folder = './BA_cost'

# Find all CSV files in the folder
csv_files = glob.glob(os.path.join(csv_folder, '*.csv'))

# Read and combine all CSV files
dfs = [pd.read_csv(file) for file in csv_files]
df = pd.concat(dfs, ignore_index=True)

# Convert columns to numeric (if they are not already)
df['cost'] = pd.to_numeric(df['cost'], errors='coerce')
df['total_token'] = pd.to_numeric(df['total_token'], errors='coerce')
df['execution_time'] = pd.to_numeric(df['execution_time'], errors='coerce')

# Drop rows with NaN in key columns
df = df.dropna(subset=['cost', 'total_token', 'execution_time'])

# Compute the required statistics
avg_cost = df['cost'].mean()
median_cost = df['cost'].median()
cost_range = (df['cost'].min(), df['cost'].max())  # Tuple (min, max)
avg_time = df['execution_time'].mean()
avg_token_per_contract = df['total_token'].mean()

# Print results
print(f"Avg. Cost: {avg_cost:.2f}")
print(f"Median Cost: {median_cost:.2f}")
print(f"Cost Range: {cost_range}")
print(f"Avg. Time: {avg_time:.2f} seconds")
print(f"Avg. Token per Contract: {avg_token_per_contract:.2f}")
