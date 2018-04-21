class AddVersionsCountToComments < ActiveRecord::Migration[4.2]
  def change
    add_column :comments, :versions_count, :integer, default: 0
  end
end
