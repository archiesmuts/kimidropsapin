class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comments, inverse_of: :post
  # has_many_attached :images

  validates :title, :body, :slug, presence: true
end
