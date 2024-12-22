import os
from src.utils import json_to_csv


def main():
    input_dir = "data/raw/"
    output_dir = "data/processed/"

    # Ensure output directory exists
    os.makedirs(output_dir, exist_ok=True)

    # Process each JSON file
    for file_name in os.listdir(input_dir):
        if file_name.endswith(".json"):
            input_path = os.path.join(input_dir, file_name)
            output_path = os.path.join(output_dir, file_name.replace(".json", ".csv"))
            print(f"Processing {file_name}...")
            json_to_csv(input_path, output_path)
            print(f"Converted {file_name} to CSV.")


if __name__ == "__main__":
    main()
