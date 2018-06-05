class Comment < ApplicationRecord

  belongs_to :post, inverse_of: :comments
  validates :name, :body, :post_id, presence: true
end
