FROM node:lts-alpine
WORKDIR /usr/src/app

# gitとvimとbashのインストール
RUN apk update && \
    apk add --no-cache git bash
    # yarn をインストール
    # npm install -g yarn  

# # アプリケーションの依存関係をインストール
# COPY package.json yarn.lock ./
# RUN yarn install

# # アプリケーションのコードをコピー
# COPY . .

# コンテナの起動時に実行するコマンド（yarn start）
CMD ["yarn", "start"]