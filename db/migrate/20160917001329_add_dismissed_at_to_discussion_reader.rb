class AddDismissedAtToDiscussionReader < ActiveRecord::Migration[4.2]
  def change
    add_column :discussion_readers, :dismissed_at, :datetime
  end
end
