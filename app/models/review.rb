class Review < ApplicationRecord
  belongs_to :synth
  belongs_to :user

  validates :content, lenght: { minimum: 10 }
end
