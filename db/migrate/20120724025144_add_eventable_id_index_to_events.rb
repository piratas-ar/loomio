class AddEventableIdIndexToEvents < ActiveRecord::Migration[4.2]
  def up
    add_index :events, :eventable_id
  end

  def down
    remove_index :events, :column => :eventable_id
  end
end
