# Use the official Apache image as the base image
FROM httpd:2.4-alpine

# Remove the default NGINX configuration file
#RUN rm /etc/nginx/conf.d/default.conf

# Copy the website files to the container
COPY src1 /usr/local/apache2/htdocs/

#Tag Image
ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

# Copy the NGINX configuration file to the container
#COPY nginx.conf /etc/nginx/conf.d
RUN docker build -t my-apache-image .


# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX web server
#CMD ["nginx", "-g", "daemon off;"]
