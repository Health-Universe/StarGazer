# Use Python 3.9 image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port streamlit runs on
EXPOSE 8501

# Command to run your Streamlit app when the container starts
CMD ["streamlit", "run", "stargazer.py"]
