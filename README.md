# README


# アプリタイトル
魚辞苑

# 概要
 魚が好きな人が釣果、料理レシピ、こだわりを伝えるコラムを投稿できるSNSサイト

# 制作背景(意図)
 釣果情報を知るための情報源が釣具屋からの情報だったり、古い形のサイトが多くあり
 より見やすい情報サイトを制作することでより魚のアクティビティを楽しめる形を制作したかった。
 料理情報やコラムも機能の中に入れることで
 釣りから発生する他の要素にもフォーカスを当てて
 全体を楽しめる形を作りたい 

# 実装予定の内容
 釣果投稿
 料理レシピ投稿
 コラム投稿
 ユーザー間のコメント、お気に入り機能

# テーブル設計

## usersテーブル

| Coliumn   | Type   | Options     |
| --------- | ------ | ----------- |
| nickname  | string | null: false |
| email     | string | null: false |
| location  | string | null: false |
| first_name | string | null: false |
| last_name  | string | null: false |
| password  | string | null: false |
|           |        |             |

## Association

- has_many :fishcatchs
- has_many :fishcathccomenst
- has_many :recipes
- has_many :recipecomments
- has_many :colimus

## fishcatchテーブル

| Coliumn        | Type    | Options     |
| -------------- | ------- | ----------- |
| prefectures_id | integer | null:false  |
| field_id       | integer | null:false  |
| fish_name      | string  | null:true   |
| fishingmethod  | string  | null:true   |
| text           | string  | nulll:false |
|                |         |             |

## Association

- belongs_to :user
- has_many :fishcatchcomments

## fishcatchcommentテーブル

| Coliumn   | Type       | Options                      |
| --------- | ---------- | ---------------------------- |
| fishcatch | references | null:false, forgin_key: true |
| user      | references | null:false, forgin_key: true |
| text      | text       | null:false                   |
|           |            |                              |

### Association
- belongs_to :user
- belongs_to :fishcatch

## recipeテーブル

| Coliumn          | Type    | Options    |
| ---------------- | ------- | ---------- |
| title            | string  | null:false |
| fishname         | string  | null:false |
| text             | text    | null:false |
|                  |         |            |

### Association
- belongs_to :user
- has_many :recipecomments

## recipecommentテーブル

| Coliumn   | Type       | Options                      |
| --------- | ---------- | ---------------------------- |
| recipe_id | references | null:false, forgin_key: true |
| user_id   | references | null:false, forgin_key: true |
| text      | text       | null:false                   |
|           |            |                              |

### Association
- belongs_to :user
- belongs_to :recipe

## colimnテーブル

| Coliumn | Type       | Options                      |
| ------- | ---------- | ---------------------------- |
| title   | string     | null:false                   |
| blog    | rongbiob   | null:false                   |
| user_id | references | null:false, forgin_key: true |
|         |            |                              |
- belongs_to :user





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
