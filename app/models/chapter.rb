class Chapter < ApplicationRecord
  belongs_to :movie
  has_many :chapters, through: :favorites
  has_many :comments
  has_many :favorites
  has_many :likes

  validates :title, presence: true
  validates :kana, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  scope :search_chapters, -> (current_user) { where(id: chapter_id = Favorite.where(user_id: current_user.id).select(:chapter_id)) }


end
