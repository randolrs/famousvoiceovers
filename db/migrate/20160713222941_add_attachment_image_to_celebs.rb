class AddAttachmentImageToCelebs < ActiveRecord::Migration
  def self.up
    change_table :celebs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :celebs, :image
  end
end
