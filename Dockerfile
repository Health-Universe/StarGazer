# Use Python 3.9 image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy only the requirements file to the container
COPY ./requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Expose the port Streamlit runs on
EXPOSE 8501

# Set the entrypoint to the Streamlit command with default CMD
ENTRYPOINT ["streamlit", "run", "stargazer.py"]
