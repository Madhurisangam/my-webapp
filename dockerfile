# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port (e.g., 3000 for a Node.js app)
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
