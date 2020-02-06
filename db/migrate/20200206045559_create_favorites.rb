class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id, unipue: true
      t.integer :chapter_id, unipue: true

      t.timestamps
    end
  end
end
