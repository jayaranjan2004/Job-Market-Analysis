import pandas as pd
from pathlib import Path

project_path = Path(__file__).resolve().parent.parent

file_path = project_path / "Data" / "cleaned data" / "Market_cleaned.csv"

df = pd.read_csv(file_path)

print("Cleaned Dataset Loaded Successfully!")
print("Shape:", df.shape)
print("\nFirst 5 Rows:")
print(df.head())