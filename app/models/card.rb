class Card < ApplicationRecord
  belongs_to :user
  has_many :squares, :foreign_key => :card_id, inverse_of: :card
  has_many :bingos, :foreign_key => :card_id
  accepts_nested_attributes_for :squares, allow_destroy: true
  validates_presence_of :name
  validates_associated :squares, presence: true

end
