# プロジェクト概要
## プログラム（プロジェクト）名
「BlogApp for Design」(ブログアップ フォー デザイン)
<!-------------------------------------------------- -->
## プログラムの概要
・日常にあふれるデザインを分析することでWebデザインに活用。<br>
このブログでアウトプットすることでいいね/コメントを貰える。<br>
GoogleMapと連携し撮影場所の共有が可能。<br>


<!-------------------------------------------------- -->
## ビジュアル（UI）の紹介

### ・トップページ
![result](https://i.gyazo.com/9faa8c3b0f3d6ab19f92cb1e56fe970a.gif)<br>
***
### 記事一覧(全ユーザーの記事)
![result](https://i.gyazo.com/ece0dbf23d28de57400572846187a2e6.gif)<br>
***
### 記事詳細画面(全体)
![result](https://i.gyazo.com/da560e906b491d952e2985a36ffbe52e.gif)<br>
***
### 記事詳細画面(GoogleMap)
![result](https://i.gyazo.com/98ac7fb5d6f28cfb7aefb14b5dcd42c5.gif)<br>
***
### Twitter認証
![result](https://user-images.githubusercontent.com/46291510/64194836-05060e80-cebb-11e9-84ea-0cd90510884b.png)<br>
***
### 投稿画面
![result](https://user-images.githubusercontent.com/46291510/65245742-19d3da80-db28-11e9-97e4-f826424b21a8.png)<br>



<!-------------------------------------------------- -->
## 使用言語、開発環境

### Version
- Ruby 2.5.1
- RubyGems 2.7.6
- Rails 5.0.7.2
- MySQL 5.6.42

<!-------------------------------------------------- -->
## 使用技術
- AWS EC2インスタンス仮想サーバにRuby/Rails環境構築
- AWS S3を利用しストレージ機能を実装
- Javascript駆動環境構築(Node.js)
- アプリケーションサーバ構築(Unicorn)
- WEBサーバ構築(Nginx)
- 自動デプロイ(Capistrano)
- Twitter APIログイン認証
- ログイン/ログアウト機能を実装
- 記事の投稿
- 画像投稿
- 記事の編集
- 記事の編集(投稿者のみ)
- 記事の削除(投稿者のみ)
- コメント機能
- いいね機能
- GoogleMap表示
- マイページ(自信の投稿一覧)
- トップページはMaterializeCSSフレームワークを使用


<!-------------------------------------------------- -->
## データベース設計

### usersテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|nickname|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|
|uid|string||
|provider|string||

##### アソシエーション
- has_many :posts<br>
- has_many :comments
- has_many :likes<br>
- has_many :likes_users

### postsテーブル(投稿機能)
|カラム名|カラムの型|オプション|
|------|----|-------|
|title|text||
|text|text||
|text|image||
|user_id|integer||
##### アソシエーション
- belongs_to :user<br>
- has_many :comments<br>
- has_many :likes<br>
- has_many :likes_users


### commentsテーブル(コメント機能)
|カラム名|カラムの型|オプション|
|------|----|-------|
|user_id|integer||
|post_id|integer||
|text|text||

##### アソシエーション
- belongs_to :post<br>
- belongs_to :user

### likesテーブル(中間テーブル/いいね機能)
|カラム名|カラムの型|オプション|
|------|----|-------|
|user_id|integer||
|post_id|integer||
|text|text||

##### アソシエーション
- belongs_to :post<br>
- belongs_to :user

<!-------------------------------------------------- -->
## 製作時期と製作期間
製作期間 2019/08/08-2019/09/18<br>
作業時間 約50時間<br>


