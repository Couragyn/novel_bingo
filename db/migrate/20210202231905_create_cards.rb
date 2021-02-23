class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :user, index: true, foreign_key: true
      t.boolean :private, :default => false
      t.boolean :featured, :default => false
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
