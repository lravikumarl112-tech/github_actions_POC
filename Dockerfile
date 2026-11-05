FROM node:22-alpine

# Update npm and its bundled dependencies
RUN npm install -g npm@latest

WORKDIR /app

COPY app/package.json ./
COPY app/server.js ./

EXPOSE 3000

CMD ["npm", "start"]