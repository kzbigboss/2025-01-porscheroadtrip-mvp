# Use Python base image
FROM python:3.12-slim

# Install the library
RUN pip install --no-cache-dir pyporscheconnectapi

# Create working directory
WORKDIR /app

# Copy over script, make executable
COPY app /app
RUN chmod +x /app/poll_data.sh

# Create a volume for data
VOLUME ["/data"]

# Set default command
# CMD ["bash", "./poll_status.sh"]