FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files for dependency installation
COPY package.json package-lock.json ./

# Install all dependencies (including dev dependencies)
RUN npm ci

# Copy source code and configuration files
COPY tsconfig.json ./
COPY src ./src
COPY .env* ./

# Set NODE_ENV to development since the app works in dev mode
ENV NODE_ENV=development

# Install mastra CLI globally for the dev command
RUN npm install -g mastra

# Expose the Mastra application port
EXPOSE 4111

# Command to run the application in dev mode
CMD ["npm", "run", "dev"]
