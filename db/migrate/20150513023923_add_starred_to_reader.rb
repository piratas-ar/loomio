class AddStarredToReader < ActiveRecord::Migration[4.2]
  def change
    add_column :discussion_readers, :starred, :boolean, default: false, null: false
  end
end
