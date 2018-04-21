class AddPriorityToPollOptions < ActiveRecord::Migration[4.2]
  def change
    add_column :poll_options, :priority, :integer, default: 0, null: false
    add_index :poll_options, :priority
  end

end
