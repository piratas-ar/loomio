class AddHasMutedToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :has_muted, :boolean, null: false, default: false
  end
end
