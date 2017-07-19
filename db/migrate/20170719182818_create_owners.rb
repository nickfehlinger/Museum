class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.belongs_to :person, foreign_key: true
      t.belongs_to :piece, foreign_key: true
      t.integer :year_bought
      t.integer :year_sold
      t.integer :price_bought
      t.integer :price_sold
      t.string :location_bought
      t.string :location_sold

      t.timestamps
    end
  end
end
