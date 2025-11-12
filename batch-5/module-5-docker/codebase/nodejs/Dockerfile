# Use Node.js base image
FROM node:22.21.1

# Copy rest of the app
COPY . .

# install packages
RUN npm install

# Run the app
CMD ["node", "server.js"]
