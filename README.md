# Nginx Deployment with docker and docker compose

This is a sample Django project that has been containerized using Docker. This guide covers serving static files, handling media files , and enhancing security through SSL with Certbot.

## Prerequisites

Before you get started, make sure you have the following tools installed on your system:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/) (typically included with Docker for desktop systems)

## Getting Started

Follow these steps to set up and run your Django project using Docker:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/budescode/django-docker-nginx-starter.git
   cd project

2. Create an .env file in the project and paste your env variables needed for the project   

3. Replace mydomain.com with your actual domain names in both the docker-compose.yml and nginx/nginx.conf file. Make sure your domain name has been properly configured with your server, else it won't work.

4. Build and start the Docker containers in detatch mode to run on background:

    ```bash
    docker-compose build
    docker-compose up -d

5. To stop the containers, run:

    ```bash
    docker-compose down

## Project Structure

The project structure follows a typical Django layout, with a few additional files and directories for Docker containerization:

Dockerfile: Specifies the instructions for building the Django application container.
docker-compose.yml: Defines the services (containers) required for the application, including the web server and database.
requirements.txt: Lists the Python packages and dependencies required for the Django application.
.env: Configuration file for environment variables.
static/: Static files for your project (CSS, JavaScript, etc.).
media_cdn/: Media files (user uploads, images, etc.).
templates/: HTML templates for rendering views.

## Customization
You can customize this project by:

Modifying the Django application.
Adjusting the Docker configuration in the Dockerfile and docker-compose.yml to suit your needs.
Adding additional Django apps, models, and views as per your project requirements.

##  Contributions
If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License. Feel free to use and modify it for your needs.

Happy coding!

