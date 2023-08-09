FROM node:14 AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
FROM node:14-alpine
WORKDIR /app
COPY --from=build /app/dist ./dist
RUN npm install -g sonarqube-scanner
ENV SONAR_HOST_URL=http://13.58.242.218:9000/
ENV SONAR_LOGIN=squ_455f86b433ad73fb1570166a9cadb8f6ad4fe4db
RUN sonarqube-scanner
ENV NEXUS_REPO_URL=http://18.221.2.79:8081/repository/nhs.repo/
ENV NEXUS_USERNAME=admin
ENV NEXUS_PASSWORD=password
RUN echo "//${NEXUS_REPO_URL}:_authToken=${NEXUS_USERNAME}:${NEXUS_PASSWORD}" > .npmrc
RUN npm publish
EXPOSE 3000
CMD ["npm", "run", "start"]
