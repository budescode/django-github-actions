FROM nginx:latest

COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copy the .env file into the container
COPY /code/.env /etc/nginx/conf.d/.env

# Set environment variable based on the values in the .env file
RUN export CERTBOT_DOMAIN=$(cat /etc/nginx/conf.d/.env | grep CERTBOT_DOMAIN | cut -d '=' -f 2)

# Replace the placeholder in the nginx.conf file with the actual domain name
RUN sed -i "s/\$CERTBOT_DOMAIN/$CERTBOT_DOMAIN/g" /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]