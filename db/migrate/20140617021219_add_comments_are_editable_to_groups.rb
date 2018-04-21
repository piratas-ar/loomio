class AddCommentsAreEditableToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :members_can_edit_comments, :boolean, default: true
  end
end
