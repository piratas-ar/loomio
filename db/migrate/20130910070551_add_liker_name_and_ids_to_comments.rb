class AddLikerNameAndIdsToComments < ActiveRecord::Migration[4.2]
  def up
    add_column :comments, :liker_ids_and_names, :text
  end

  def down
    remove_column :comments, :liker_ids_and_names
  end
end
