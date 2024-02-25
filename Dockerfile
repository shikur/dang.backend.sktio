# Dockerfile
FROM node:21-slim
#COPY . /app
WORKDIR /app
RUN ls -la
COPY package*.json .
#COPY ./backend/package*.json /app/
RUN ls -la
COPY . /app/
RUN npm install
RUN ls -la 
COPY . .
RUN ls -la 

RUN npm  install
RUN ls -la
EXPOSE 3000
CMD ["node", "index.js"]