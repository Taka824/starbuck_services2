class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :photo
  validates :title, presence: true, length: { maximum: 100 }
  validates :arrange_content, presence: true, length: { maximum: 60_500 }
  validates :one_point, presence: true, length: { maximum: 200 }
end
