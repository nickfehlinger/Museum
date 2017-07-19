class AddAttachmentImageToPieces < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pieces do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pieces, :image
  end
end
