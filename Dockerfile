FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the script
COPY . .

# Run the script when the container starts
CMD ["python", "cropModal.py"]

