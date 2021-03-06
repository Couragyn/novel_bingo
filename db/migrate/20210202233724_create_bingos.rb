class CreateBingos < ActiveRecord::Migration[5.0]
  def change
    create_table :bingos do |t|
      t.references :user, index: true, foreign_key: {on_delete: :cascade}
      t.references :card, index: true, foreign_key: true

      t.timestamps
    end
  end
end
