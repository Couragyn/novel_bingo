class AddHardToBingo < ActiveRecord::Migration[5.0]
  def change
    add_column :bingos, :hard, :boolean
  end
end
