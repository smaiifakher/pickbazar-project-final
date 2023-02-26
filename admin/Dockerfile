# Use Node.js v14 as the base image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app/admin

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install dependencies with Yarn
RUN yarn install

# Copy the rest of the app files to the container
COPY . .


# Expose port 3000
EXPOSE 3002

# Run the app with Yarn
CMD ["sh", "yarn.sh"]
