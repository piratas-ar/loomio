class RemoveDiscussionTotalViews < ActiveRecord::Migration[4.2]
  def up
    remove_column :discussions, :total_views
  end
end
