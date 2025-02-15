
FROM python:3.9-slim

# Copy the application code
COPY . /app

# Set the working directory
WORKDIR /app

# Install dependencies
RUN pip install fastapi uvicorn

# Run the application
CMD ["python", "app.py"]