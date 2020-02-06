class Chapter < ApplicationRecord
  belongs_to :movie
  has_many :favorites
  has_many :chapters, through: :favorites
  validates :title, presence: true
  validates :kana, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

end
