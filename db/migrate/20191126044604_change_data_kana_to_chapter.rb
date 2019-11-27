class ChangeDataKanaToChapter < ActiveRecord::Migration[5.2]
  def change
    change_column :chapters, :kana, :text
  end
end
