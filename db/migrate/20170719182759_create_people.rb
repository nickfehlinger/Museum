class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :fname
      t.string :lname
      t.integer :born
      t.string :died
      t.string :hometown

      t.timestamps
    end
  end
end
