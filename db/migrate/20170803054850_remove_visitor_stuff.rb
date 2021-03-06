class RemoveVisitorStuff < ActiveRecord::Migration[4.2]
  def change
    drop_table :visitors
    remove_column :polls, :visitors_count
    remove_column :polls, :undecided_visitor_count
    remove_column :groups, :community_id
    drop_table :communities
  end
end
