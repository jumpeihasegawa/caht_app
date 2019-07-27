# README

# 初回起動時

* コンテナを起動する
$ docker-compose up -d

# APIへのアクセス

http://localhost:50003

# DBへのアクセス

* 開発環境DB
host     : localhost
port     : 50001
database : myapp_development
user     : postgres
password : postgres

* テスト環境DB
host     : localhost
port     : 50002
database : myapp_test
user     : postgres
password : postgres
