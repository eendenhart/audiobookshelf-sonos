FROM node:16-alpine
ENV NODE_ENV=production

WORKDIR usr/src/app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

CMD ["node", "server.js"]
