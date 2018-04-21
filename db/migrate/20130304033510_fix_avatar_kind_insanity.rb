class FixAvatarKindInsanity < ActiveRecord::Migration[4.2]
  def up
    change_column(:users, :avatar_kind, :string, default: 'initials', null: false)
  end

  def down
  end
end
