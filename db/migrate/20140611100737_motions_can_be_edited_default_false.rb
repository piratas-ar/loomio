class MotionsCanBeEditedDefaultFalse < ActiveRecord::Migration[4.2]
  def up
    change_column :groups, :motions_can_be_edited, :boolean, default: false, null: false
  end

  def down
    change_column :groups, :motions_can_be_edited, :boolean, default: true, null: false
  end
end
