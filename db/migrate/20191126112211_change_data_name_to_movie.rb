class ChangeDataNameToMovie < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :name, :text
  end
end
