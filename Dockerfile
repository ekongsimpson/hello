# Use an official Python base image
FROM python:alpine

# Set working directory
WORKDIR /app

# Copy requirements and app files
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the code
COPY . .

# Download necessary NLTK data
RUN python -m nltk.downloader wordnet omw

# Expose the port Flask runs on
EXPOSE 5000

# Set environment variable for Flask
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the app
CMD ["flask", "run"]

