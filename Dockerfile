# Use the official Node.js 14 LTS (Long Term Support) image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the files from the current directory to the container
COPY . .

# Expose the port on which your Node.js application is running (assuming it's using port 3000)
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
