class MovieChapters < ActiveRecord::Migration[5.2]
  def change
    drop_table :movie_chapters
  end
end
