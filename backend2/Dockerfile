FROM node:4.4.7

WORKDIR /app
ADD package.json /app/package.json
RUN npm install

ADD . /app

EXPOSE 4444
CMD npm start
