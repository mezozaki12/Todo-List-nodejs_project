# Dockerfile for a Node.js application (using Node.js 20 as a base for the image)
FROM node:20

# Set the working directory as /app inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory to install dependencies needed
COPY package*.json ./

# Install the application dependencies
RUN npm install 

# Copy all application code to the working directory
COPY . .

ENV mongoDbUrl=mongodb://moaz:moaz123@mongodb:27017/todo?authSource=admin
ENV PORT=4000



# Expose the port on which the application will run
EXPOSE 4000

# Command to run the application .
CMD ["npm", "start"]
