## usersテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|name|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|

### アソシエーション
- belongs_to :

## テーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|name|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|

### アソシエーション
- belongs_to :