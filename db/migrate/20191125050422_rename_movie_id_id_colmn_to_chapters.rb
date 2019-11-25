class RenameMovieIdIdColmnToChapters < ActiveRecord::Migration[5.2]
  def change
    rename_column :chapters, :movie_id_id, :movie_id
  end
end
