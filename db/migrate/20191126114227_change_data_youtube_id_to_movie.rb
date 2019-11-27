class ChangeDataYoutubeIdToMovie < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :youtube_id, :string
  end
end
