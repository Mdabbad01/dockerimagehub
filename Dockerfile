# Use the official lightweight Python image as base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project directory into /app
COPY . /app

# ❌ WRONG: This only installs Flask, but not any other dependencies
# RUN pip install flask

# ✅ FIX: Use a requirements.txt file to manage dependencies
RUN pip install -r requirements.txt

# Expose the port your app will run on
EXPOSE 5000

# Set the command to run the app
CMD ["python", "app.py"]