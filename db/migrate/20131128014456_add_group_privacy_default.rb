class AddGroupPrivacyDefault < ActiveRecord::Migration[4.2]
  def up
    change_column_default(:groups, :privacy, 'private')
  end

  def down
    change_column_default(:groups, :privacy, nil)
  end
end
