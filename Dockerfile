
# Use official Node.js image as a base
FROM node:14

WORKDIR /PostmanApiTesting

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]