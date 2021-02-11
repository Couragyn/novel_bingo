class Card < ApplicationRecord
  belongs_to :user
  has_many :squares, :foreign_key => :card_id
  has_many :bingos, :foreign_key => :card_id
  accepts_nested_attributes_for :squares

end
