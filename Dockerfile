
FROM python:3.12-slim-bookworm
RUN apt-get update && apt-get install -y --no-install-recomends curl ca-certificates
# Copy the application code
ADD https://astral.sh/uv/install.sh /uv-installer.sh
COPY . /app

# Set the working directory
WORKDIR /app

# Install dependencies
RUN mkdir -p /data
RUN pip install fastapi uvicorn requests python-dotenv openai prettier pandas sqlite3

# Run the application
CMD ["python", "app.py"]