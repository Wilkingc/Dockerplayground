# Use a specific Python version for consistency
FROM python:3.11-slim-bookworm

# Set the working directory in the container
WORKDIR /workspace

# Copy requirements.txt first to leverage Docker cache
COPY requirements.txt .

# Install system dependencies if needed (e.g., for certain Python packages)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Command to start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
