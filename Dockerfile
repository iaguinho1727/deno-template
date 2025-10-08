FROM denoland/deno as base

RUN apt-get update -y

WORKDIR /app

COPY . .

ENTRYPOINT [ "deno","run","-A","src/main.ts" ]

