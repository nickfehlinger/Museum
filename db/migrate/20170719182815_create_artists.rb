class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.belongs_to :person, foreign_key: true
      t.belongs_to :piece, foreign_key: true

      t.timestamps
    end
  end
end
