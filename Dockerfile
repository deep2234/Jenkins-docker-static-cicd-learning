# Base nginx image (contains web server)
FROM nginx:alpine

# Remove the default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into nginx directory
COPY . /usr/share/nginx/html


