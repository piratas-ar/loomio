class AddRevokedToVisitor < ActiveRecord::Migration[4.2]
  def change
    add_column :visitors, :revoked, :boolean, default: false, null: false
  end
end
