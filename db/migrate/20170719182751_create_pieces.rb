class CreatePieces < ActiveRecord::Migration[5.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :size
      t.text :description
      t.integer :value
      t.integer :location
      t.boolean :active

      t.timestamps
    end
  end
end
