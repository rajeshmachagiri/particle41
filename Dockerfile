
# Use a lightweight Python image
FROM python:3.9-alpine

# Set the working directory
WORKDIR /app

# Install necessary dependencies
# Upgrade pip and install Flask in one RUN step to reduce layers
RUN pip install --no-cache-dir --upgrade pip flask

# Copy the application code
COPY app.py .

# Create a non-root user and switch to it
RUN adduser -D appuser
USER appuser

# Expose the application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

