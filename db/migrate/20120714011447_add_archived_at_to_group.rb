class AddArchivedAtToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :archived_at, :timestamp, :default => nil
  end
end
