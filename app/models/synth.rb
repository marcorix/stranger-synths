class Synth < ApplicationRecord
  CATEGORIES = %w[Analog Digital Drum-machine Eurorack Sampler].freeze
  CONDITIONS = %w[Brand-new Mint Good Fair].freeze

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :images

  validates :name, :brand, :price, :category, :conditions, :location, presence: true
  validates :category, inclusion: { in: Synth::CATEGORIES }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_brand_and_category,
    against: [ :name, :brand, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
