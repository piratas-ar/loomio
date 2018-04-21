class AddAvatarInitialsToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :avatar_initials, :string
  end
end
