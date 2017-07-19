class CreateTechniques < ActiveRecord::Migration[5.1]
  def change
    create_table :techniques do |t|
      t.string :technique

      t.timestamps
    end
  end
end
