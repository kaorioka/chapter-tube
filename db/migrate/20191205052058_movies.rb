class Movies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text "title"
      t.string "youtube_id"
      t.integer "play_time"
      t.timestamps
    end
  end
end
