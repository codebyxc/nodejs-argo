FROM node:24-alpine
WORKDIR /app
COPY . /app
RUN apk add --no-cache openssl curl gcompat iproute2 coreutils && npm i
EXPOSE 3000
CMD ["node", "index.js"]
