class AddPins < ActiveRecord::Migration[4.2]
  def change
    add_column :discussions, :pinned, :boolean, default: false, null: false
    add_column :discussions, :importance, :integer, default: 0, null: false
  end
end
