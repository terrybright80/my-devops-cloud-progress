# Use the official Nginx image as a base
FROM nginx:alpine

# Create directory for images
RUN mkdir -p /usr/share/nginx/images

# Copy the HTML file to the Nginx web server directory
COPY index.html /usr/share/nginx/html/

# Copy sample images (you would replace these with actual student images)
# Note: In a real scenario, you would have actual image files to copy
COPY images/ /usr/share/nginx/images/

# Expose port 5000 for web traffic
EXPOSE 5000

# Nginx automatically starts when the container runs