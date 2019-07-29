class Micropost < ApplicationRecord
# belongs_to :user の関連付けによって、ユーザの紐付け無しには Micropost を保存できません。
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :liked, through: :reverses_of_favorite, source: :user
end