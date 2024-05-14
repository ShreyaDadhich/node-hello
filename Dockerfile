# Stage 1: Build the Node.js app
FROM node:latest AS build
WORKDIR /app
COPY . .
RUN npm install

# Stage 2: Create a lightweight image
FROM node:alpine
WORKDIR /app
COPY --from=build /app .
EXPOSE 3000
CMD ["node", "index.js"]