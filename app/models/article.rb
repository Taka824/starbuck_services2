class Article < ApplicationRecord
  mount_uploader :article_image, ArticleImageUploader
  belongs_to :user
  validates :category, presence: true
end
