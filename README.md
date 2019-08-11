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
- Ruby
- Rails
- MySQL