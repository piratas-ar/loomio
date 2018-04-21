class AddListedInInboxToMemberships < ActiveRecord::Migration[4.2]
  def change
    add_column :memberships, :inbox_position, :integer, default: 0, null: true
  end
end
