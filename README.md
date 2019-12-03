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

##お世話になったサイト・記事
- Font Awesomeアイコンを素早く検索しコピー。Photoshopなどでの使い方
https://www.pixelimage.jp/blog/2015/07/font_awesome.html

- 文字列を省略して「…」を付与する方法 – CSS/jQuery
https://dev.classmethod.jp/ria/string-replace-css-and-jquery/

- MySQLに大きなcsvをいれるまで
https://qiita.com/tonhosshi/items/62a129582e805693c644

- スクロールすると途中で表示される「トップへ戻るボタン」の実装。さらにフッター手前で止める場合の実装。
https://recooord.org/scroll-to-top/