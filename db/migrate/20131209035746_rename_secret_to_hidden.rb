class RenameSecretToHidden < ActiveRecord::Migration[4.2]
  def up
    Group.where(privacy: 'secret').update_all("privacy = 'hidden'")
  end

  def down
    Group.where(privacy: 'hidden').update_all("privacy = 'secret'")
  end
end
