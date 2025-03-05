FROM ghcr.io/wilkingc/jupyter-test-data:latest

# Install additional Python libraries
RUN pip install scikit-learn matplotlib

# Copy your custom Python script
COPY my_script.py /app/my_script.py

# Set working directory
WORKDIR /app

# Run the script on container startup (optional)
CMD ["python", "my_script.py"]
