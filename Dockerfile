# Use an official lightweight Python image.
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the current directory contents into the container
COPY index.html .

# Expose the port the app runs on
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
