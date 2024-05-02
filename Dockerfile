# Use the official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR my-nodejs-app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which the Node.js application will run
EXPOSE 3005

# Command to start the Node.js application
CMD ["node", "app.js"]

