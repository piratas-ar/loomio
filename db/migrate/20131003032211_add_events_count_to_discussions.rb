class AddEventsCountToDiscussions < ActiveRecord::Migration[4.2]
  def change
    add_column :discussions, :events_count, :integer, null: false, default: 0
    rename_column :discussion_readers, :read_items_count, :read_events_count
  end
end
