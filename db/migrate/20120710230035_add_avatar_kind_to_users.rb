class AddAvatarKindToUsers < ActiveRecord::Migration[4.2]
  def up
    add_column :users, :avatar_kind, :string
  end

  def down
    remove_column :users, :avatar_kind
  end
end
