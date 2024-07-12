# Use the official Node.js version 20 image from the Docker Hub
FROM node:20

# Create and set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Expose the port the app runs on (5000 in this case)
EXPOSE 5000

# Define the command to run the application
CMD ["npm", "start"]
