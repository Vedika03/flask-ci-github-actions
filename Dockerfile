# Use official Python base image
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy necessary files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

ENV PYTHONPATH=/app

# Set the entrypoint
CMD ["python", "app/main.py"]
