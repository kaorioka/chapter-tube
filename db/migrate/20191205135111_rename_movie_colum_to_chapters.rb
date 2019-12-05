class RenameMovieColumToChapters < ActiveRecord::Migration[5.2]
  def change
    rename_column :chapters, :Movie_id, :movie_id
  end
end
