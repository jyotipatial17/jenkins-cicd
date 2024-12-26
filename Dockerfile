# Use an official Node.js image as the base image
FROM node:12.2.0-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if you have one) first to take advantage of Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 8000

# Start the Node.js application
CMD ["node", "app.js"]
