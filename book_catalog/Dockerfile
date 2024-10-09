# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Expose the port the app runs on
EXPOSE 5001

# Run the app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "5001"]
