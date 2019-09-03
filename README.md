# プロジェクト概要
## プログラム（プロジェクト）名
BlogApp for SAO(ブログアップ フォー エスエーオー)

<!-------------------------------------------------- -->
## プログラムの概要やビジュアル（UI）の紹介
・「ソードアート・オンライン」の関連作品群の中から<br>
主にアニメを通じて得た- テクノロジーの未来 -に関する情報を<br>
分析してアウトプットするためのブログ。<br>
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




<!-------------------------------------------------- -->
## データベース設計

### usersテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|name|string|null: false,add_index|
|email|text|null: false,add_index,unique|
|password|string|null: false|
##### アソシエーション
- has_many :post

### postsテーブル
|カラム名|カラムの型|オプション|
|------|----|-------|
|title|text||
|text|text||
|text|image||
##### アソシエーション
- belongs_to :user


