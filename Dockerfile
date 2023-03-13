# Use Nginx as the base image
FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the static website files to the container
COPY src1 /usr/share/nginx/html

# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]

RUN systemctl enable nginx

# Copy the NGINX configuration file to the container
#COPY nginx.conf /etc/nginx/conf.d

