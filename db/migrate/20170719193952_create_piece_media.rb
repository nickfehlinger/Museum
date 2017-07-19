class CreatePieceMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :piece_media do |t|
    	t.belongs_to :piece, foreign_key: true
    	t.belongs_to :medium, foreign_key: true
      t.timestamps
    end
  end
end
