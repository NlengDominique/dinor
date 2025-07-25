FROM node:lts-alpine
RUN apk add --no-cache python3 make g++ git
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]