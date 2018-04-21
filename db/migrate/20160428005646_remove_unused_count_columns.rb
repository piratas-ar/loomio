class RemoveUnusedCountColumns < ActiveRecord::Migration[4.2]
  def change
    remove_column :discussion_readers, :read_comments_count
    remove_column :discussions, :last_item_at
    remove_column :discussions, :comments_count
  end
end
