# README
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

### Association

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

### Association

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
