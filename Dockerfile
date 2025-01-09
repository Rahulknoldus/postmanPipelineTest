
# Use official Node.js image as a base
FROM node:14

# Set the working directory
WORKDIR /PostmanApiTesting

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]