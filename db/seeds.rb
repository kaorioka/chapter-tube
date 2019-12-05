require "csv"
#csvファイルを扱うためのgemを読み込む

CSV.foreach('db/movies.csv') do |row|
#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される
Movie.create(title: row[1], youtube_id: row[2], play_time: row[3])
#テーブルの各カラムに、各行のn番目の値を代入している。

end

CSV.foreach('db/chapters.csv') do |row|
  Chapter.create(title: row[1], kana: row[2], start_time: row[3], end_time: row[4], movie_id: row[7])
end

