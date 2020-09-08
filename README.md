# テーブル設計

## user テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :questions
## question テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| text    | string     | null: false,     |
| image   | string     | null: false,     |
| button1 | string     | null: false,     |
| button2 | string     | null: false,     |
| button3 | string     | null: false,     |
| button4 | string     | null: false,     |
### Association

- belongs_to :user
- has_many :answers


## answer テーブル

| Column  | Type       | Options             |
| ------- | ---------- | ------------------- |
| answer  | integer    | null: false         |
| question| references | null: false, foreign_key: true |
### Association
- belongs_to : question
