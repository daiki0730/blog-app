# プロジェクト概要
## プログラム（プロジェクト）名
「BlogApp for Design」(ブログアップ フォー デザイン)
<!-------------------------------------------------- -->
## プログラムの概要
・日常にあふれるデザインを<br>
分析してアウトプットするためのブログ。<br>

<!-------------------------------------------------- -->
## ビジュアル（UI）の紹介

### ・トップページ(ログイン前)
![result](https://i.gyazo.com/9faa8c3b0f3d6ab19f92cb1e56fe970a.gif)<br>
***
### トップページ(ログイン後)
![result](https://i.gyazo.com/40e5faa460499eda72e57d05f6a7ba70.gif)<br>
***
### 記事一覧(全ユーザーの記事)
![result](https://i.gyazo.com/ece0dbf23d28de57400572846187a2e6.gif)<br>
***
### 記事詳細画面
![result](https://i.gyazo.com/da560e906b491d952e2985a36ffbe52e.gif)<br>
***
### Twitter認証
![result](https://user-images.githubusercontent.com/46291510/64194836-05060e80-cebb-11e9-84ea-0cd90510884b.png)<br>
***
### 新規登録画面
![result](https://user-images.githubusercontent.com/46291510/64194706-c83a1780-ceba-11e9-9ff1-292aed7da180.png)<br>
***
### ログイン画面
![result](https://user-images.githubusercontent.com/46291510/64194574-72656f80-ceba-11e9-95c7-427813adfcf0.png)<br>
***
### 投稿画面
![result](https://user-images.githubusercontent.com/46291510/64195110-a1301580-cebb-11e9-9161-3976db128cf7.png)<br>
***
### 編集画面
![result](https://user-images.githubusercontent.com/46291510/64195306-1ac80380-cebc-11e9-8b96-0d6d6e66e128.png)<br>
***
### 削除画面
![result](https://user-images.githubusercontent.com/46291510/64195491-8f02a700-cebc-11e9-87bc-181d373bc1c7.png)<br>
***
### マイページ(自身の投稿のみ表示)
![result](https://user-images.githubusercontent.com/46291510/64195393-5367dd00-cebc-11e9-9f1f-b5f1f6327ee8.png)<br>




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

### postsテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|title|text||
|text|text||
|text|image||
|user_id|integer||
##### アソシエーション
- belongs_to :user<br>
- has_many :comments

### commentsテーブル
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
製作期間 2019/08/08-2019/09/03<br>
作業時間 約50時間<br>

<!-------------------------------------------------- -->
## 追加実装したい機能
- カテゴリ機能(各章ごと)
- タグ機能(各技術ごと)
- facebook/google認証
