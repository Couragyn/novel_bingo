class CreateSquares < ActiveRecord::Migration[5.0]
  def change
    create_table :squares do |t|
      t.references :card, index: true, foreign_key: {on_delete: :cascade}
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
