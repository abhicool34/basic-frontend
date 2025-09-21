# Stage 1: Use a lightweight Nginx image as the base
# Using alpine for a smaller image size
FROM nginx:1.25.3-alpine

# Remove the default Nginx welcome page
RUN rm /usr/share/nginx/html/index.html

# Copy our custom index.html file to the Nginx public directory
# This is the file that Nginx will serve
COPY index.html /usr/share/nginx/html

# Expose port 80, which is the default port Nginx listens on
EXPOSE 80

# The command to start Nginx when the container launches.
# 'daemon off;' ensures Nginx runs in the foreground, which is best practice for containers.
CMD ["nginx", "-g", "daemon off;"]

