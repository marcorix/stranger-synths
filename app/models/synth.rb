class Synth < ApplicationRecord
  belongs_to :user

  validates :name, :brand, :price, :year, :polyphony, :conditions, presence: true
end
