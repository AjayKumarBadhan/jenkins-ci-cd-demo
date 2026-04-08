# Base image
FROM python:3.9-slim

# Working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]
