require "csv"
#csvファイルを扱うためのgemを読み込む

CSV.foreach('db/movie.csv') do |row|
#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される
Movie.create(name: row[0], youtube_id: row[1], play_time: row[2])
#テーブルの各カラムに、各行のn番目の値を代入している。

end

CSV.foreach('db/chapter.csv') do |row|
  Chapter.create(name: row[0], kana: row[1], start_time: row[2], end_time: row[3], movie_id: row[4])
end

