# Use an official Python runtime as a parent image
FROM python:3.8

# Set environment variables
ENV PYTHONUNBUFFERED 1
#This means that as soon as a message is generated (e.g., by a print statement), it's immediately visible, making it easier to see real-time output and diagnose issues more quickly, especially in environments like Docker where log messages may be crucial for debugging.
ENV DJANGO_SETTINGS_MODULE project.settings

# Create and set the working directory
RUN mkdir /code
WORKDIR /code

# Copy the current directory contents into the container at /code
COPY . /code/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the entrypoint script and make it executable
COPY entrypoint.sh /code/entrypoint.sh
RUN chmod +x /code/entrypoint.sh
# Copy the entrypoint.sh script and set execute permissions

# Expose the port the application runs on
EXPOSE 8000


# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#In summary, EXPOSE is used within the Dockerfile to document which ports a container might use, 
#while port binding with -p or -P is used at runtime to actually open and map ports between the host and the container, making container services accessible from the host or external network.