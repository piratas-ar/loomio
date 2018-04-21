class AddIsCommercialToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :is_commercial, :boolean
  end
end
