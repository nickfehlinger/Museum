class CreatePieceStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :piece_styles do |t|
    	t.belongs_to :piece, foreign_key: true
    	t.belongs_to :style, foreign_key: true
      t.timestamps
    end
  end
end
