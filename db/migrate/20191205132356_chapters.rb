class Chapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.text "title"
      t.text "kana"
      t.integer "start_time"
      t.integer "end_time"
      t.timestamps
    end
  end
end
