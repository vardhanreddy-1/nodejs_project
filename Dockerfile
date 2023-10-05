FROM node:17
WORKDIR /app
COPY  package*.json /app
RUN npm ci 
COPY . /app/
RUN npm run build
EXPOSE 3000
CMD ["node ", "app.js"]