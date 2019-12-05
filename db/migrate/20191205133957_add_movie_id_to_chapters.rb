class AddMovieIdToChapters < ActiveRecord::Migration[5.2]
  def change
    add_column :chapters, :Movie_id, :bigint
  end
end
