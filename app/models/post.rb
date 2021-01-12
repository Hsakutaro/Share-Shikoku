class Post < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture
  
  validates :content, presence: true, length: { minimum:5,maximum: 30 }
end
