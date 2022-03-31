class Synth < ApplicationRecord
  CATEGORIES = %w[Analog Digital Drum-machine Eurorack Sampler].freeze
  CONDITIONS = %w[Brand-new Mint Good Fair].freeze

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :images

  validates :name, :brand, :price, :category, :conditions, :location, presence: true

  validates :category, inclusion: { in: Synth::CATEGORIES }
end
