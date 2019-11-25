class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :youtube_id
      t.integer :play_time
      t.timestamps
    end
  end
end
