FROM node:alpine

WORKDIR /usr/src/app

COPY --from=ghcr.io/ufoscout/docker-compose-wait:latest /wait /wait

COPY package*.json ./

COPY prisma ./prisma/

COPY .env ./

RUN npm install

COPY . .

RUN /wait && npm prisma db push

EXPOSE 3000

RUN npm run build