class AddAttachmentImageToVikings < ActiveRecord::Migration
  def self.up
    change_table :vikings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vikings, :image
  end
end
