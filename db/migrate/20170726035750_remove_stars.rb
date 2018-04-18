class RemoveStars < ActiveRecord::Migration[4.2]
  def change
    remove_column :discussion_readers, :starred, :boolean
  end
end
