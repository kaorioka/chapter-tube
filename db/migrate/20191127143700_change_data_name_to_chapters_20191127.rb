class ChangeDataNameToChapters20191127 < ActiveRecord::Migration[5.2]
  def change
    rename_column :chapters, :name, :title
  end
end
