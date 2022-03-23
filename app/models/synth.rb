class Synth < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :brand, :price, :year, :polyphony, :conditions, presence: true
end
