FROM node:latest

WORKDIR /taskendium-rest-api

COPY package*.json ./
COPY prisma ./prisma/

COPY . .
COPY ./.env.production ./.env

RUN npm install --quiet --no-optional --no-fund --loglevel=error

RUN npx prisma db push

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:prod"]