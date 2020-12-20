# README

## バージョン
- ruby: 2.6.5
- rails: 5.2.2
- pry-byebug: 3.9

## コマンド
- DB作成: docker-compose run web bundle exec rake db:create
- migrate: docker-compose run web bundle exec rake db:migrate
- install: docker-compose run web bundle install
- generator作成： docker-compose run web bundle exec rails g model board name:string title: string body:text(テーブル名は複数系)

- コントローラ作成 自分でファイルを作る
- viewを作成　自分でディレクトリとファイルを作る
- 手順: routeの追加、controllerの追加、htmlの追加