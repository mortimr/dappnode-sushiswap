FROM alpine

RUN apk add --no-cache git nodejs npm yarn python3 \
&&  git clone https://github.com/sushiswap/sushiswap-interface /usr/src/app \
&&  cd /usr/src/app \
&&  yarn \
&&  yarn build

WORKDIR /usr/src/app

EXPOSE 80

ENTRYPOINT yarn build --port 80
