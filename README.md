## usersテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|name|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|

### アソシエーション
- has_many :post

## postsテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|

### アソシエーション
- belongs_to :user

### Version
- Ruby 2.5.1
- RubyGems 2.7.6
- Rails 5.0.7.2
- MySQL 5.6.42