class Movie < ApplicationRecord  
  has_many :chaptars
  validates :title, presence: true
  validates :youtube_id, presence: true, uniqueness: true
  validates :play_time, presence: true
end
