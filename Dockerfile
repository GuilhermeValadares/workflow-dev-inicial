FROM node:18-alpine
WORKDIR /app
RUN apk add --update-cache sqlite
COPY package*.json ./
RUN npm install
COPY . .
USER node
EXPOSE 3000
CMD ["npm", "run", "dev"]
