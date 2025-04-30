# Step 1: Use Node.js base image
FROM node:18

# Step 2: Set working directory
WORKDIR /usr/src/app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy rest of the application
COPY . .

# Step 5: Expose the port
EXPOSE 3000

# Step 6: Start the application
CMD ["node", "server.js"]
