class AddPollIdToVisitor < ActiveRecord::Migration[4.2]
  def change
    add_column :visitors, :poll_id, :integer, null: false, index: true
  end
end
