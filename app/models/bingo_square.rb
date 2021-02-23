class BingoSquare < ApplicationRecord
  belongs_to :bingo, inverse_of: :bingo_squares
end
