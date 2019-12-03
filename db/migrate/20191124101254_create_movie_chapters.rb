class CreateMovieChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_chapters do |t|
      t.references :movie, foreign_key: true
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
