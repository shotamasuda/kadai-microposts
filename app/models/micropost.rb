class Micropost < ApplicationRecord
# belongs_to :user の関連付けによって、ユーザの紐付け無しには Micropost を保存できません。
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
end