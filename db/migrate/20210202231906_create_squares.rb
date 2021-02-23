class CreateSquares < ActiveRecord::Migration[5.0]
  def change
    create_table :squares do |t|
      t.references :card, index: true, foreign_key: {on_delete: :cascade}
      t.string :name
      t.integer :position
      t.text :description
      t.text :hard
      t.string :status
      t.boolean :free, :default => false

      t.timestamps
    end
  end
end
