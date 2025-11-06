FROM oven/bun:1

USER root

WORKDIR /app
COPY package.json .
RUN bun install

COPY . .

# run the app
EXPOSE 3000/tcp
ENTRYPOINT [ "bun", "index.ts" ]