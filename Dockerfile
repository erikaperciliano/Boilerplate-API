FROM node:18-slim

WORKDIR /usr/src/app

COPY package.json package-lock.json ./   
COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000  

CMD ["npm", "run", "start"]