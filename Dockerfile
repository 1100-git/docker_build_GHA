FROM ubuntu:latest

WORKDIR /app

COPY package.json /app

# RUN pip install

COPY . .

ENV PORT 4200

EXPOSE $PORT

VOLUME ["/app/data"]

CMD [ "node", "app.js" ]