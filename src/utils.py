import json
import csv


def json_to_csv(input_file, output_file, chunk_size=1000):
    """
    Converts a JSON file to a CSV file in chunks.

    Args:
        input_file (str): Path to the input JSON file.
        output_file (str): Path to the output CSV file.
        chunk_size (int): Number of JSON objects to process at a time.
    """
    try:
        with open(input_file, "r") as json_file, open(
            output_file, "w", newline="", encoding="utf-8"
        ) as csv_file:
            writer = None
            buffer = []

            for line in json_file:
                buffer.append(json.loads(line.strip()))

                if len(buffer) >= chunk_size:
                    if writer is None:
                        # Initialize the CSV writer with headers from the first chunk
                        writer = csv.DictWriter(csv_file, fieldnames=buffer[0].keys())
                        writer.writeheader()

                    writer.writerows(buffer)
                    buffer.clear()

            # Write remaining records
            if buffer:
                if writer is None:
                    writer = csv.DictWriter(csv_file, fieldnames=buffer[0].keys())
                    writer.writeheader()

                writer.writerows(buffer)

    except Exception as e:
        print(f"Error processing file {input_file}: {e}")
