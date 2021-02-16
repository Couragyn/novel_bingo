class CreateBingoSquares < ActiveRecord::Migration[5.0]
  def change
    create_table :bingo_squares do |t|
      t.references :bingo, index: true, foreign_key: {on_delete: :cascade}
      t.text :review
      t.string :isbn
      t.string :status
      t.float :rating
      t.boolean :hard
      
      t.timestamps
    end
  end
end
