class Bingo < ApplicationRecord
  belongs_to :user
  belongs_to :card
  has_many :bingo_cards
end
