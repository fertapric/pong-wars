FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the static site
COPY . /usr/share/nginx/html/

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
