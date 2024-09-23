# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app



# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Expose the port that Streamlit will run on
EXPOSE 8501

# Command to run Streamlit when the container starts
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
