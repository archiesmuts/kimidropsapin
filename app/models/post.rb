class Post < ApplicationRecord
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comments, inverse_of: :post, dependent: :destroy
  has_one_attached :header_image
  has_many_attached :photos

  validates :title, :body, :slug, presence: true

  # scope :latest, -> { where(field: true) }
end
