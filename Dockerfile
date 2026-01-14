FROM python:3.9-slim

WORKDIR /app

COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Render uses port 10000 by default
EXPOSE 10000

# Command to run your script
CMD ["python", "app.py"]
