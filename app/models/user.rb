class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users, through: :favorites
  has_many :comments
  has_many :favorites
  has_many :likes

  def already_favorited?(chapter)
    self.favorites.exists?(chapter_id: chapter.id)
  end

  def already_liked?(chapter)
    self.likes.exists?(chapter_id: chapter.id)
  end
end
