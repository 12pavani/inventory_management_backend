# Use a Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all files from current directory to /app in container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# Expose the default FastAPI port
EXPOSE 8000

# Run the FastAPI app with Uvicorn
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
