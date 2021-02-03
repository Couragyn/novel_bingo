class Card < ApplicationRecord
  belongs_to :user
  has_many :squares
  has_many :bingos
  
end
