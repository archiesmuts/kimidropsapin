class Post < ApplicationRecord
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :comments, inverse_of: :post, dependent: :destroy
  has_one_attached :header_image
  has_many_attached :photos

  validates :title, :body, :published, :slug,  presence: true
  validate :header_image_format, :photos_format

  enum published: {
    draft: 0,
    final: 1
  }

  def should_generate_new_friendly_id?
    title_changed?
  end

  private

  def header_image_format
    return unless header_image.attached?
    if !header_image.content_type.in?('image/jpeg image/png image/svg')
      errors.add(:header_image, 'needs to be a JPG, JPEG, PNG or SVG image')
      header_image.purge_later
    end
  end

  def photos_format
    return unless photos.attached?
    photos.each do |photo|
      return if photo.blob.content_type.start_with? 'image/'
      photo.purge_later
      errors.add(:photo, 'needs to be JPG, JPEG, PNG or SVG image')
    end
  end

end
