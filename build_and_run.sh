#!/bin/bash

# This script builds the Docker image for compiling LaTeX projects and runs a container from it.
# ! Make sure you have docker installed on your machine

# Build the Docker image with the tag 'latex_env'
# Make sure you are in the directory containing the Dockerfile when running this script.
docker build -t latex_env .

# Run the container in interactive mode and remove it on exit
# Mount the LaTeX project directory from the host to '/project' inside the container
# Replace '/path/to/your/latex/project' with the actual path to your LaTeX project on your host machine.
docker run -it --rm -v /path/to/your/latex/project:/project latex_env