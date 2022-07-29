class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  mount_uploaders :images, ImageUploader
  validates :title, presence: true, length: { maximum: 100 } 
  validates :arrange_content, presence: true, length: { maximum: 60_500 }
  validates :one_point, presence: true, length: { maximum: 200 }
  validates :images, presence: true
  validates :category, presence: true
end
