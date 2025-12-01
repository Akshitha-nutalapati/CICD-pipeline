# Use nginx as base image
FROM nginx:alpine

# Remove default nginx HTML
RUN rm -rf /usr/share/nginx/html/*

# Copy your chat app files into nginx html directory
COPY . /usr/share/nginx/html/

# Set ownership so nginx user can read them
RUN chown -R nginx:nginx /usr/share/nginx/html

# Expose port 80
EXPOSE 80

