class Post < ApplicationRecord
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comments, inverse_of: :post, dependent: :destroy
  has_one_attached :header_image
  has_many_attached :photos

  validates :title, :body, :published, :slug, presence: true

  enum published: {
    draft: 0,
    final: 1
  }
  # scope :latest, -> { where(field: true) }
end
