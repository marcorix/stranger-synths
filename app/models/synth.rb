class Synth < ApplicationRecord
  CATEGORIES = %w[Analog Digital Drum-machine Eurorack Sampler]
  CONDITIONS = %w[Brand-new Mint Good Fair]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :images

  validates :name, :brand, :price, :category, :conditions, presence: true

  validates :category, inclusion: { in: Synth::CATEGORIES }
end
