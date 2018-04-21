class AddExampleToPoll < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :example, :boolean, default: false, null: false
  end
end
