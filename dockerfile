# Use a lightweight base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 80

# Add a healthcheck to ensure the app is responsive
#HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
#    CMD curl -f http://localhost:80/health || exit 1

# Start the application with a production-ready WSGI server
# (e.g., Gunicorn)
# You would need to add gunicorn to your requirements.txt
# CMD ["gunicorn", "--bind", "0.0.0.0:80", "main:app"]

# For development, you can still use the Flask server
CMD ["python", "main.py"]
