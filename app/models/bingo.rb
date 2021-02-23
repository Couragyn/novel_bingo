class Bingo < ApplicationRecord
  belongs_to :user
  belongs_to :card
  has_many :bingo_squares, :foreign_key => :bingo_id, inverse_of: :bingo
  accepts_nested_attributes_for :bingo_squares, allow_destroy: true
end
