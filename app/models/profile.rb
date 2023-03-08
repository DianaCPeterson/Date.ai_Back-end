class Profile < ApplicationRecord
  has_many :descriptions, dependent: :destroy
  has_many :matches, through: :descriptions

  validates :name, presence: true
  validates :caption, presence: true
  validates :image, presence: true


end
