FROM python:3.9-slim #Using slim is a best practice.

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /workspace

# Copy dependencies
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Expose necessary ports
EXPOSE 8888

# Default command
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
