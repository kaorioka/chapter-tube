class Chapter < ApplicationRecord
  belongs_to :movie
  validates :name, presence: true
  validates :kana, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
