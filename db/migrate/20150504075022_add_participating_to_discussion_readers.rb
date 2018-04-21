class AddParticipatingToDiscussionReaders < ActiveRecord::Migration[4.2]
  def change
    add_column :discussion_readers, :participating, :boolean, null: false, default: :false
  end
end
