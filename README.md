# メモ

## moviesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|youtube_id|text|null: false, unique|
|play_time|integer|null: false|

### Association
- has_many : chaptars, through: :movie_chaptars

## movie_chaptarsテーブル
|Column|Type|Options|
|------|----|-------|
|movie_id|references|null: false, foreign_key: true|
|chaptar_id|references|null: false, foreign_key: true|

### Association
- belongs_to movie
- belongs_to chapter

## chapterテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false,index: true|
|kana|string|null: false,index: true|
|start_time|integer|null: false|
|end_time|integer|null: false|
|movie_id|references|null: false, foreign_key: true|

### Association
- belongs_to movie, through: :movie_chaptars
