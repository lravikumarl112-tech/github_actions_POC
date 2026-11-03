
# Use Node.js base image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy application files
COPY app/package.json ./
COPY app/server.js ./

# Expose application port
EXPOSE 3000

# Start application
CMD ["npm", "start"]

