FROM node:12
WORKDIR /home/desk/Desktop/nginx-container/app
COPY app home/desk/Desktop/nginx-container/app
RUN npm install
CMD node index.js
