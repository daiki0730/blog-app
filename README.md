## usersテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|name|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|

### アソシエーション
- has_many :messages

## messagesテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|body|text|null: false,add_index|
|image|string|null: false,add_index,unique|

### アソシエーション
- belongs_to :users

### Version
- Ruby 2.5.1
- RubyGems 2.7.6
- Rails 5.0.7.2
- MySQL 5.6.42