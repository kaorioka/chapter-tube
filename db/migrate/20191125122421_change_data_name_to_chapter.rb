class ChangeDataNameToChapter < ActiveRecord::Migration[5.2]
  def change
    change_column :chapters, :name, :text
  end
end
