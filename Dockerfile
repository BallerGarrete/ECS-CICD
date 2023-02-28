# Use the official NGINX image as the base image
FROM nginx

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the website files to the container
COPY src /usr/share/nginx/html/

# Copy the NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX web server
CMD ["nginx", "-g", "daemon off;"]