# Use the official Node.js image as the base image
FROM node:14

# Create a working directory inside the container
WORKDIR /app

# Copy your application files into the container
COPY hello-world.js /app/

# Install application dependencies
RUN npm install

# Expose the port your application will run on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "hello-world.js"]
