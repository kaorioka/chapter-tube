# メモ

## moviesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,index: true|
|youtube_id|text|null: false, unique|
|play_time|integer|null: false|

### Association
- has_many : chaptars, through: :movie_chaptars

## chapterテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,index: true|
|kana|string|null: false,index: true|
|start_time|integer|null: false|
|end_time|integer|null: false|
|movie_id|references|null: false, foreign_key: true|

### Association
- belongs_to movie, through: :movie_chaptars

##お世話になった記事
[文字列を省略して「…」を付与する方法 – CSS/jQuery]{https://dev.classmethod.jp/ria/string-replace-css-and-jquery/)