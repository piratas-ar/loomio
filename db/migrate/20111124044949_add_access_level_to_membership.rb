class AddAccessLevelToMembership < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :access_level, :string
  end
end
