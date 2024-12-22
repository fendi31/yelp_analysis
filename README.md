# Yelp Analysis Project

This project focuses on analyzing Yelp dataset files, starting with converting JSON format into CSV using Python's native libraries. It is designed with a modular structure to accommodate additional scripts and analysis tasks in the future. The entire workflow is containerized using Docker.

---

## Features

- Converts JSON files (line-separated) to CSV.
- Dockerized for portability and ease of deployment.
- Organized project structure for scalability and maintainability.
- Flexible to include additional data analysis scripts.

---

## File Structure

```plaintext
yelp_analysis/
|
├── data/                   # Directory for raw JSON and processed CSV files
│   ├── raw/                # Raw JSON files
│   ├── processed/          # Processed CSV files
│
├── src/                    # Source code
│   ├── main.py             # Main script to handle JSON-to-CSV conversion
│   ├── utils.py            # Utility functions for JSON-to-CSV conversion
│
├── Dockerfile              # Dockerfile for containerizing the project
├── requirements.txt        # Python dependencies (empty for this project)
├── .gitignore              # Git ignore file
└── README.md               # Documentation
```

---

## Getting Started

### Prerequisites

- Python 3.9 or later
- Docker (optional, for containerization)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/fendi31/yelp-analysis.git
   cd yelp-analysis
   ```

2. Place the raw Yelp JSON files in the `data/raw/` directory.

---

## Usage

### Running Locally

1. Run the conversion script:

   ```bash
   python src/main.py
   ```

2. Converted CSV files will be saved in the `data/processed/` directory.

---

### Using Docker

1. Build the Docker image:

   ```bash
   docker build -t yelp-analysis .
   ```

2. Run the container:

   ```bash
   docker run -v $(pwd)/data:/app/data yelp-analysis
   ```

   - The `-v $(pwd)/data:/app/data` flag maps your local `data` directory to the container's `/app/data` directory.

---

## Code Explanation

### `main.py`

- Entry point for the JSON-to-CSV conversion task.
- Iterates through all JSON files in the `data/raw/` directory.
- Calls the `json_to_csv` function for each file.

### `utils.py`

- Contains the `json_to_csv` function to handle JSON-to-CSV conversion:
  - Reads JSON chunk by chunk.
  - Writes the data to a CSV file using `csv.DictWriter`.

---

## Additional Notes

- The project assumes the JSON files are **line-separated** (one JSON object per line).
- If the input files are not in this format, modifications may be required.
