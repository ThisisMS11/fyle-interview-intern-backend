# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV FLASK_APP=core/server.py

# Expose the Flask port
EXPOSE 5000

# Upgrade database and run the shell script
CMD ["bash", "-c", "export FLASK_APP=core/server.py && flask db upgrade -d core/migrations/ && bash run.sh"]
