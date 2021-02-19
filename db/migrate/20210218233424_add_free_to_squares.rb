class AddFreeToSquares < ActiveRecord::Migration[6.1]
  def change
    add_column :squares, :free, :boolean, default: false
  end
end
