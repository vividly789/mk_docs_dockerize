# Using the official Python 3.8 image from Docker Hub as the base image
FROM python:3.8

# Installing mkdocs using pip, Python's package manager
RUN pip install mkdocs

# Setting /app as the working directory for any following instructions in the Dockerfile
WORKDIR /app

# Coping everything from the current directory on the host (.) to the /app directory in the Docker image
COPY . /app

# Using the RUN command to execute the chmod command, changing the permissions of the mkdockerize.sh script to make it executable
RUN chmod +x /app/mkdockerize.sh

# Setting the default command for the Docker container to mkdocs
CMD ["mkdocs"]
