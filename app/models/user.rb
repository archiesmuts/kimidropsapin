class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :name, :slug, presence: true

  def slug_candidates
    [
      [:name ],
      [:name, :email],
    ]
  end

  def should_generate_new_friendly_id?
   name_changed?
  end
end
