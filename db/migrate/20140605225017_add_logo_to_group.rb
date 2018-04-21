class AddLogoToGroup < ActiveRecord::Migration[4.2]
  def self.up
    add_attachment :groups, :logo
  end
  def self.down
    remove_attachment :groups, :logo
  end
end
