FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# For this example, we only need Flask
RUN pip install Flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the app.py when the container launches
CMD ["python", "main.py"]
