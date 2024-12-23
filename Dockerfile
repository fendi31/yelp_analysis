# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Define the command to run the script
CMD ["python", "src/main.py"]
