# メモ

## moviesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,index: true|
|youtube_id|text|null: false, unique|
|play_time|integer|null: false|

### Association
- has_many : chaptars

## chapterテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false,index: true|
|kana|string|null: false,index: true|
|start_time|integer|null: false|
|end_time|integer|null: false|
|movie_id|references|null: false, foreign_key: true|

### Association
- belongs_to movie

## users
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- to be continue

## お世話になったサイト・記事

- Font Awesomeアイコンを素早く検索しコピー。Photoshopなどでの使い方
https://www.pixelimage.jp/blog/2015/07/font_awesome.html

- 文字列を省略して「…」を付与する方法 – CSS/jQuery
https://dev.classmethod.jp/ria/string-replace-css-and-jquery/

- Railsで、DBからCSVファイルを読み込む方法
https://qiita.com/taccaya/items/4dc7706da0ec79d61544

- スクロールすると途中で表示される「トップへ戻るボタン」の実装。さらにフッター手前で止める場合の実装。
https://recooord.org/scroll-to-top/

- 【初心者向け】railsアプリをherokuを使って確実にデプロイする方法【決定版】
https://qiita.com/kazukimatsumoto/items/a0daa7281a3948701c39

- 【herokuコマンド】createからdestroyまで
https://qiita.com/chihiro/items/5c3ff400f6cb99deb945

- rails5でfaviconの設定
https://tasotasoso.hatenablog.com/entry/2018/10/16/220921

- railsのindexとforeign_keyについておしえてください。
https://teratail.com/questions/63406
