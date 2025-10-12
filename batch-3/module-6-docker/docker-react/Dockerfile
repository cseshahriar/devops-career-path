# Step 1: Use Node.js base image for build
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files to container
COPY . .

# Build the Vite project
RUN npm run build

# Step 2: Serve the app with a lightweight HTTP server
FROM nginx:stable-alpine

# Copy built files from builder
COPY --from=builder /app/dist /usr/share/nginx/html

# Copy custom NGINX config if needed (optional)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
