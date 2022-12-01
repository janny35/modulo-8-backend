FROM node:18-alpine AS build
WORKDIR /servicio-backend
COPY package.json .
RUN npm install -g nodemon
RUN npm install
COPY . .
RUN npm run dev