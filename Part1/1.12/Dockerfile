FROM node:14-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY example-frontend .

RUN npm install

RUN npm run build 

RUN npm install -g serve 

CMD ["serve", "-s", "-l", "5000", "build"] 
