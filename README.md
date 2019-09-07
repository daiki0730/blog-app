# プロジェクト概要
## プログラム（プロジェクト）名
「BlogApp for SAO」(ブログアップ フォー エスエーオー)
<!-------------------------------------------------- -->
## プログラムの概要
・「ソードアート・オンライン(Sword Art Online、略してSAO)」の関連作品群の中から<br>
主にアニメを通じて得た- テクノロジーの未来 -に関する情報を<br>
分析してアウトプットするためのブログ。<br>
(現状はアニメについてのブログは多数あるが技術専門のものはない)

<!-------------------------------------------------- -->
## ビジュアル（UI）の紹介

### ・トップページ(ログイン前)
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### トップページ(ログイン後 = 全ユーザー投稿ページ)
![result](https://user-images.githubusercontent.com/46291510/64195951-b0b05e00-cebd-11e9-9617-4e4af28badab.gif)<br>
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
### 記事詳細画面
![result](https://user-images.githubusercontent.com/46291510/64196293-84e1a800-cebe-11e9-8c5a-5924afe873b4.gif)<br>
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
- Node.jsを利用しJavascript駆動環境構築
- Unicornをアプリケーションサーバとして採用
- NginxをWEBサーバとして採用
- Capistranoを利用した自動デプロイを導入
- Twitter APIを利用したログイン認証機能を実装
- gem deviseを利用したログイン、ログアウト機能を実装
- RESTfulな設計を意識し記事の投稿、画像投稿、編集、削除、コメント機能を実装
- 自身の記事だけを閲覧できるマイページを実装
- 記事の編集、削除は投稿者しかできない設計
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
## 追加で実装したい機能
- カテゴリ機能(各章ごと)
- タグ機能(各技術ごと)
- facebook/google認証
