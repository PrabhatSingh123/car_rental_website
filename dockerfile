# Use an official Nginx image
FROM nginx:alpine

# Remove the default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy built React files to nginx folder
COPY build/ /usr/share/nginx/html

# Expose port 80 to the outside
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
