import pandas as pd
from pathlib import Path

# Locate project folder
project_path = Path(__file__).resolve().parent.parent

# Load original dataset
file_path = project_path / "Data" / "raw data" / "Market.csv"

df = pd.read_csv(file_path)

# Create a working copy
cleaned_df = df.copy()

print("Original dataset:", df.shape)
print("Working dataset:", cleaned_df.shape)
# Fix company size formatting anomaly
cleaned_df["Size"] = cleaned_df["Size"].replace("Jan-50", "1-50")

# Verify correction
print("\nCompany Size After Correction:")
print(cleaned_df["Size"].value_counts())
# Remove completely empty column
cleaned_df = cleaned_df.drop(columns=["FIELD4"])

# Verify
print("\nDataset after removing empty column:")
print(cleaned_df.shape)
print("FIELD4 exists:", "FIELD4" in cleaned_df.columns)
# Check placeholder values
print("\nPlaceholder Value Analysis:")

for column in cleaned_df.columns:
    minus_one = (cleaned_df[column] == -1).sum()
    na_values = (cleaned_df[column] == "na").sum()
    unknown_values = (cleaned_df[column] == "unknown").sum()

    if minus_one > 0 or na_values > 0 or unknown_values > 0:
        print(
            f"{column}: -1 = {minus_one}, "
            f"na = {na_values}, unknown = {unknown_values}"
        )
# Inspect categorical columns
columns_to_inspect = [
    "job_title_sim",
    "seniority_by_title",
    "Degree"
]

for column in columns_to_inspect:
    print(f"\n--- {column} ---")
    print(cleaned_df[column].value_counts(dropna=False).head(15))
# Standardize missing categorical values

categorical_columns = [
    "job_title_sim",
    "seniority_by_title",
    "Degree",
    "Size"
]

for column in categorical_columns:
    cleaned_df[column] = cleaned_df[column].replace(
        {"na": "Unknown", "unknown": "Unknown"}
    )

# Verify changes
print("\nCategorical Values After Standardization:")

for column in categorical_columns:
    print(f"\n{column}:")
    print(cleaned_df[column].value_counts(dropna=False))
print("\nNumeric Missing Values Check:")

for column in ["Rating", "Founded", "Age"]:
    print(f"\n{column}:")
    print("Value -1:", (cleaned_df[column] == -1).sum())
    print("Minimum:", cleaned_df[column].min())
    print("Maximum:", cleaned_df[column].max())
import numpy as np
# Replace -1 with proper missing values
numeric_columns = ["Rating", "Founded", "Age"]

for column in numeric_columns:
    cleaned_df[column] = cleaned_df[column].replace(-1, np.nan)

# Verify
print("\nNumeric Missing Values After Cleaning:")

for column in numeric_columns:
    print(f"{column}: {cleaned_df[column].isna().sum()} missing values")
# Check relationship between Founded and Age
valid_records = cleaned_df.dropna(subset=["Founded", "Age"])

calculated_age = 2021 - valid_records["Founded"]

print("\nFounded vs Age Validation:")
print("Records checked:", len(valid_records))
print("Matching ages:", (calculated_age == valid_records["Age"]).sum())
print("Mismatching ages:", (calculated_age != valid_records["Age"]).sum())
# Final missing-value audit

print("\nFinal Missing Values Audit:")
print(cleaned_df.isna().sum()[cleaned_df.isna().sum() > 0])

print("\nRemaining Placeholder Values:")
for column in cleaned_df.columns:
    na_count = (cleaned_df[column] == "na").sum()
    unknown_count = (cleaned_df[column] == "unknown").sum()

    if na_count > 0 or unknown_count > 0:
        print(f"{column}: na={na_count}, unknown={unknown_count}")

print("\nFinal Dataset Shape:")
print(cleaned_df.shape)
# Save cleaned dataset

output_folder = project_path / "Data" / "cleaned data"
output_folder.mkdir(parents=True, exist_ok=True)

output_file = output_folder / "Market_cleaned.csv"

cleaned_df.to_csv(output_file, index=False)

print("\nCleaned dataset saved successfully!")
print("File location:", output_file)