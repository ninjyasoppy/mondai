# テーブル設計

## user テーブル
| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| admin    | boolean| null: false, default: false|
| email    | string | null: false |
| password | string | null: false |
- 管理人のみ編集を行えるようにする

## tweet テーブル
| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| car_name   | string     | null: false |
| price      | string     | null: false |
| sales_point| string     | null: false |
| model_year | string     | null: false |
| mileage    | string     | null: false |
| inspection | string     | null: false |
| image      | string     | null: false |
|user        | references | foreign_key: true|
- 販売車両の投稿をする
- has_one_attached :image

## contact テーブル
| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| name         | string | null: false |
| message      | text   | null: false |
| email        | string | null: false |
| phone_number | string | null: false |
- 問合せフォーム