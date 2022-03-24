class Synth < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, :brand, :price, :year, :polyphony, :conditions, presence: true
end
