# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory to the default Nginx HTML directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy all static website files from the src directory into the container
COPY ../src /usr/share/nginx/html

# Expose port 80 to allow HTTP traffic
EXPOSE 80

# Run Nginx in the foreground to serve your files
CMD ["nginx", "-g", "daemon off;"]