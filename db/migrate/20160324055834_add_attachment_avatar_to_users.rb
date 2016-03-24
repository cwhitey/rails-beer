class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :beers, :picture
  end
end
