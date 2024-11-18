# Base image for Node.js
FROM node:18

# Set working directory
WORKDIR /be

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3001

# Start the Express server
CMD ["node", "app.js"]
