class RemoveUnnecessaryColumnsFromEvents < ActiveRecord::Migration[4.2]
  def change
    remove_column :notifications, :discussion_id
    remove_column :notifications, :comment_id
    remove_column :notifications, :motion_id
    remove_column :notifications, :kind
  end
end
