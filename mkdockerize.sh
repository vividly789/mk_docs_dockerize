#!/bin/bash

dir=$1
# This sets the variable 'dir' as the first argument passed to the script. This is assumed to be the directory of the MkDocs project

cmd=$2
# This sets the variable 'cmd' as the second argument passed to the script. This is the command, either 'produce' or 'serve'

image="mkdocs-image"
# Defines the name of the Docker image that will be built.

docker build -t $image .
# Builds a Docker image with the tag 'mkdocs-image' using the Dockerfile in the current directory.

if [ "$cmd" == "produce" ]
then
    docker run --rm -v $(pwd)/$dir:/app $image mkdocs build --clean
    # If the 'cmd' argument is 'produce', this runs a Docker container from the image,
    # maps the project directory to the /app directory in the container, and executes 'mkdocs build --clean'.    
    tar -czf site.tar.gz -C $dir site
    # It then compresses the generated 'site' directory into a tar.gz file.

elif [ "$cmd" == "serve" ]
then
    docker run --rm -p 8000:8000 -v $(pwd)/$dir:/app $image mkdocs serve
    # If the 'cmd' argument is 'serve', this runs a Docker container from the image,
    # maps the project directory to the /app directory in the container, exposes port 8000, and executes 'mkdocs serve'.
else
    echo "Invalid command. Please choose either 'produce' or 'serve'."
    # If the 'cmd' argument is neither 'produce' nor 'serve', it outputs an error message and

    exit 1
    # exits the script with a non-zero status, indicating an error.

fi
