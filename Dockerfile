# Use a minimal Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the app files
COPY . .

# Expose the application port
EXPOSE 8080

# Start the app
CMD ["node", "server.js"]