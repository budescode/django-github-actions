FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copy the .env file into the container
COPY /code/.env /etc/nginx/conf.d/.env
# Set environment variables based on the values in the .env file
ENV SERVER_NAME=$(cat /etc/nginx/.env | grep CERTBOT_DOMAIN | cut -d '=' -f 2)

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]