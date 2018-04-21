class AddChangesToVersions < ActiveRecord::Migration[4.2]
  def change
    add_column :versions, :object_changes, :jsonb
  end
end
