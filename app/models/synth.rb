class Synth < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  validates :name, :brand, :price, :year, :polyphony, :conditions, presence: true
end
