class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture
  
  validates :content, presence: true, length: { maximum: 20 }
end
