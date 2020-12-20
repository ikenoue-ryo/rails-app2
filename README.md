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
- seed作成: docker-compose exec web bundle exec rake db:seed
- モデル作成: docker-compose run web  bundle exec rails g model comment board:references name:string comment:text(notnull付与する)
- コントローラ作成： docker-compose exec web rails g controller comments create destroy --skip-template-engine
- 多対多の中間テーブル作成: docker-compose exec web bundle exec rails g model board_tag_relation board:references tag:references

- コントローラ作成 自分でファイルを作る
- viewを作成　自分でディレクトリとファイルを作る
- 手順: routeの追加、controllerの追加、htmlの追加