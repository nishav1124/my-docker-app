# 1. Start with a lightweight version of Node.js
FROM node:20-alpine

# 2. Create a folder inside the container for your app
WORKDIR /app

# 3. Copy your app files into the container
COPY package.json .
COPY index.js .

# 4. Tell Docker the app listens on port 3000
EXPOSE 3000

# 5. The command to start your app when the container turns on
CMD ["npm", "start"]