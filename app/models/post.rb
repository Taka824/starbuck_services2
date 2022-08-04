class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 100 } 
  validates :arrange_content, presence: true, length: { maximum: 60_500 }
  validates :one_point, presence: true, length: { maximum: 200 }
  validates :image, presence: true
  validates :category, presence: true
  validates :dignose_category, presence: false
end
