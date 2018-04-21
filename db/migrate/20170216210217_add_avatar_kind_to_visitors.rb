class AddAvatarKindToVisitors < ActiveRecord::Migration[4.2]
  def change
    add_column :visitors, :avatar_kind, :string, default: 'initials', null: false
    add_column :visitors, :avatar_initials, :string
  end
end
