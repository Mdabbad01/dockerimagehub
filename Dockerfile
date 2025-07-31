# Use the official lightweight Python image as base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app


# Copy the requirements file into the container
COPY . /app

# Install the Python dependencies
RUN pip install flask

# Copy the rest of your application code into the container
EXPOSE 5000


CMD ["python", "app.py"]

