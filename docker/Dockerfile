FROM nginx:latest

# Clear default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files to NGINX default serve path
COPY src/ /usr/share/nginx/html/

# Expose the default NGINX port (optional but correct)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
