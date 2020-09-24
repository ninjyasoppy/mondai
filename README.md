アプリケーション名	a-line-maido
アプリケーション概要	会社のHP。https://a-line-maido.herokuapp.com/
EMAIL→ a-linemaido@nifty.com(管理者権限付与)
PASS → aaaaaa

利用方法         管理者は車両一覧の投稿、編集、削除ができます。
目指した課題解決  親の会社のHPを作ることが目的です。
実装した機能     userカラムにadmin(boolean型)を作ることでtrueのuserだけ実行できるアクションを作成しました。
               車両一覧の投稿、編集、削除
               問合せフォーム。name.message.email.phone_numberをcontactに保存した後contact_mailerで送信。
               レンタカー用view、表の作成。
               スタッフ用view
実装予定の機能   複数写真の投稿。レスポンシブデザイン。
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