# Dockerized MkDocs Project

This repository contains a Dockerized environment for running and serving an MkDocs website. This eliminates the need to install MkDocs and any other dependencies locally, making it easier for you to manage and distribute your website.


## Project Structure

- `mkdocs_project`: Directory containing a basic MkDocs project.
- `Dockerfile`: Defines the Docker image, which includes Python and MkDocs.
- `.github-actions-ci.yml`: Sets up CI/CD with GitLab.
- `mkdockerize.sh`: A wrapper script for running Docker commands to produce and serve the website.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

## Requirements

- Docker: To build and run the Docker image.
- Bash: To run the `mkdockerize.sh` script.
- GitLab Runner to use the `.github-actions-ci.yml` for CI/CD.

## How to Use

1. **Building the Docker image**: Run the command `docker build -t <your_docker_image> .` to build the Docker image.
2. **Producing the website**: Run the command `./mkdockerize.sh <Project-Directory> produce` to build the static site with MkDocs and package it into a `.tar.gz` file.
 eg: ./mkdockerize.sh mkdocs-project produce
3. **Serving the website**: Run the command `./mkdockerize.sh <Project-Directory> serve` to serve the website at `http://localhost:8000`.
 eg: ./mkdockerize.sh mkdocs-project serve

Note: Replace `your_docker_image` with the name of your Docker image.


### Installing the Project

1. Clone the repository:

Of course, here is a more detailed README.md example:

markdown
Copy code
# Dockerized MkDocs Project

This repository contains a Dockerized environment for running and serving an MkDocs website. This eliminates the need to install MkDocs and any other dependencies locally, making it easier for you to manage and distribute your website.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed Docker. If not, you can download it [here](https://www.docker.com/products/docker-desktop).
- You have a Unix-like shell (like Bash) to execute the `mkdockerize.sh` script.
- (Optional) You have GitLab Runner installed if you want to use the `.github-actions-ci.yml` for CI/CD.

### Installing the Project

1. Clone the repository:

git clone https://github.com/vividly789/mk_docs_dockerize.git

2. Navigate to the project directory:
cd your_project

3. Build the Docker image with your chosen image name:
docker build -t your_docker_image .


### Usage

This project provides two main commands:

1. **Produce**: This command takes a directory with an MkDocs project, produces a static website using MkDocs, and writes it to a `.tar.gz` file. To run it, use:
bash mkdockerize.sh produce


2. **Serve**: This command reads the `.tar.gz` file produced by the `produce` command, serves the website using MkDocs, and makes it available at `http://localhost:8000`. To run it, use:
bash mkdockerize.sh serve


Make sure to replace `your_docker_image` with the name of your Docker image in the `mkdockerize.sh` script.

## Running the Tests

The `.github-actions-ci.yml` file includes a simple pipeline that builds the Docker image and checks that the server is running correctly. You can run this pipeline on your local machine using GitLab Runner or in a GitLab CI/CD environment.


