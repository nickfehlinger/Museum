class CreatePieceTechniques < ActiveRecord::Migration[5.1]
  def change
    create_table :piece_techniques do |t|
    	t.belongs_to :piece, foreign_key: true
    	t.belongs_to :technique, foreign_key: true
      t.timestamps
    end
  end
end
