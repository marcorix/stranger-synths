class Review < ApplicationRecord
  belongs_to :synth
  belongs_to :user

  validates :content, length: { minimum: 10 }
  validates :rating, presence: true
end
