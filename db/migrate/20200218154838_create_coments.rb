class CreateComents < ActiveRecord::Migration[5.2]
  def change
    create_table :coments do |t|
      t.string :text
      t.references :user, foreign_key: true
      t.references :chapter, foreign_key: true
      t.timestamps
    end
  end
end
