class ChangeGroupDescriptionToText < ActiveRecord::Migration[4.2]
  def up
    change_column :groups, :description, :text
  end

  def down
    #not required
  end
end
