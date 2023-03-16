# Use Nginx as the base image
FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/

# Give Nginx read access to the css file and the directories conrtaining it.
RUN chmod +r src/css/style.css

# Copy the static website files to the container
COPY src/* /usr/share/nginx/html/


# Expose port 80 for incoming HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


