# Use an official Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install necessary dependencies
RUN pip install --no-cache-dir jupyter transformers opencv-python-headless

# Expose the port for Jupyter Notebook
EXPOSE 8888

# Command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]