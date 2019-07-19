# README

# 初回起動時

* コンテナを起動する
$ docker-compose up -d

* データベースを作成する
$ docker-compose run web rake db:create

# APIへのアクセス

http://localhost:3000

# DBへのアクセス

host     : localhost
port     : 8000
Database : myapp_development
user     : postgres
password : postgres
