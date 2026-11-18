import pandas as pd
from pathlib import Path

# Get the project folder automatically
project_path = Path(__file__).resolve().parent.parent

# Locate the original dataset
file_path = project_path / "Data" / "raw data" / "Market.csv"

# Load the dataset
df = pd.read_csv(file_path)

# Display first 5 rows
print(df.head())

# Display dataset dimensions
print("\nDataset Shape:")
print(df.shape)

# Display column names
print("\nColumn Names:")
print(df.columns.tolist())
# Check missing values in each column
print("\nMissing Values:")
print(df.isnull().sum())
# Check possible missing-value placeholders
print("\nChecking placeholder values:")

for column in df.columns:
    minus_one = (df[column] == -1).sum()
    na_values = (df[column] == "na").sum()
    unknown_values = (df[column] == "unknown").sum()

    if minus_one > 0 or na_values > 0 or unknown_values > 0:
        print(f"{column}: -1 = {minus_one}, na = {na_values}, unknown = {unknown_values}")
# Check duplicate records
print("\nDuplicate Records:")
print(df.duplicated().sum())
# Check column data types and non-null counts
print("\nData Types and Dataset Information:")
df.info()
# Verify average salary calculations
calculated_avg = (df["Lower_Salary"] + df["Upper_Salary"]) / 2

print("\nSalary Validation:")
print("Matching salary records:", (calculated_avg == df["Avg_SalaryK"]).sum())
print("Mismatching salary records:", (calculated_avg != df["Avg_SalaryK"]).sum())
print("\nSalary Column Statistics:")
print(df[["Lower_Salary", "Upper_Salary", "Avg_SalaryK"]].describe())

print("\nSalary Estimate Samples:")
print(df["Salary_Estimate"].head(10))
print(df[["Lower_Salary", "Upper_Salary", "Avg_SalaryK"]].describe())
print("\nCompany Size Distribution:")
print(df["Size"].value_counts(dropna=False))
print("\nRecords with unusual company size:")
print(df[df["Size"] == "Jan-50"][["Company_Name", "Size", "Location"]].head(10))