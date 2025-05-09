FROM nginx:latest

WORKDIR /usr/share/nginx/html

# Clear default nginx HTML
RUN rm -rf ./*

# ✅ Copy your website files from project-level /src folder
COPY src/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
