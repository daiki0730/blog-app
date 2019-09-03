# プロジェクト概要
## プログラム（プロジェクト）名
「BlogApp for SAO」(ブログアップ フォー エスエーオー)

<!-------------------------------------------------- -->
## ビジュアル（UI）の紹介

### ・トップページ(ログイン前)
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### トップページ(ログイン後)
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### Twitter認証
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### 新規登録画面
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### ログイン画面
![result](https://user-images.githubusercontent.com/46291510/64194574-72656f80-ceba-11e9-95c7-427813adfcf0.png)<br>
***
### 投稿画面
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### 編集画面
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### 削除画面
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>
***
### マイページ(自身の投稿のみ表示)
![result](https://user-images.githubusercontent.com/46291510/64193266-61672f00-ceb7-11e9-810c-c3737d4ac84f.gif)<br>


<!-------------------------------------------------- -->
## プログラムの概要
・「ソードアート・オンライン(Sword Art Online、略してSAO)」の関連作品群の中から<br>
主にアニメを通じて得た- テクノロジーの未来 -に関する情報を<br>
分析してアウトプットするためのブログ。<br>
(現状はアニメについてのブログは多数あるが技術専門のものはない)
<!-------------------------------------------------- -->
## ペルソナ
・ITに関して知識、興味が無い人<br>
・アニメ(SAO)に興味がある人<br>
・年齢10代〜40代<br>
・男女<br>
<!-------------------------------------------------- -->
## 製作時期と製作期間
製作期間 2019/08/08-2019/09/03<br>
作業時間 50時間<br>
<!-------------------------------------------------- -->
## プログラムのコンセプト
・IT技術への興味をもってもらうこと。<br>
  興味を持つことで誰でも服や食事の流行に対して敏感なようにIT分野の技術や製品に対しても<br>
日常的に知りたい、学びたいと意識を持ち先進的な技術を積極的に取り入れる習慣ができるようになる。<br>
  入り口としてまずはIT(技術)を知ること。<br>
障壁を下げるためにアニメというコンテンツを通して、<br>
楽しみながらプログラミングやITに興味を持ってもらうことが狙い。<br>

<!-------------------------------------------------- -->
## ペルソナの要求事項
・コンテンツが強制的でない。<br>
・見るだけでも利用できる。<br>
・アニメと関連性のある話題のみ分析して記事にする。<br>
・シンプルに見やすく、使いやすいものがいい。<br>

<!-------------------------------------------------- -->
## 使用言語、開発環境

### Version
- Ruby 2.5.1
- RubyGems 2.7.6
- Rails 5.0.7.2
- MySQL 5.6.42

<!-------------------------------------------------- -->
## 使用技術
- Twitter APIを利用したログイン認証機能を実装
- gem deviseを利用したログイン、ログアウト機能を実装
- RESTfulな設計を意識し記事の投稿、編集、削除、コメント機能を実装
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
## 追加で実装したい機能
- カテゴリ機能(各章ごと)
- タグ機能(各技術ごと)
- facebook/google認証
