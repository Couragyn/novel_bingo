class Square < ApplicationRecord
   belongs_to :card

  def get_truncated_name
    string = Square.find(self.id).name
    return string.length > 30 ? "#{string[0...30]}..." : string
  end
end
