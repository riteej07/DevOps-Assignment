FROM node:18.20.0-alpine

WORKDIR /

COPY ["package.json","./"]

RUN npm install

# Bundle app source
COPY . ./

EXPOSE 3000

CMD ["node","./main.js"]

