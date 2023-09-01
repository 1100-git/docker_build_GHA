FROM ubuntu:latest

WORKDIR /app

COPY package.json /app

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y awscli

RUN aws s3 cp s3://1100-deb/pack_1100.deb .

COPY . .

ENV PORT 4200

EXPOSE $PORT

VOLUME ["/app/data"]

CMD [ "node", "app.js" ]