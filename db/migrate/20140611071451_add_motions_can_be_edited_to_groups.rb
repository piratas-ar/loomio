class AddMotionsCanBeEditedToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :motions_can_be_edited, :boolean, default: true, null: false
  end
end
