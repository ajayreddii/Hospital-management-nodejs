FROM node:14
MAINTAINER ch.ajayreddy
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

RUN chown -R node:node .
EXPOSE 3000
CMD ["npm", "run", "start"]
