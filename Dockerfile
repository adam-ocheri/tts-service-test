#! Version 1
# # syntax=docker/dockerfile:1

# FROM python:3.8-slim-buster

# WORKDIR /python-dock

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt

# COPY . .

# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

#! Version 2
# # Use the official Python image as the base image
# FROM python:3.8-slim

# # Set the working directory in the container
# WORKDIR /

# # Copy the requirements.txt file into the container
# COPY requirements.txt .

# # Install the Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the rest of the application code into the container
# COPY . .

# # Expose port 5000 for the Flask app
# EXPOSE 3000

# # Set the entry point to run the Flask app
# CMD ["python", "app.py"]

#! Version 3
FROM python:3.8-slim-buster

WORKDIR /

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python3", "app.py"]
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]