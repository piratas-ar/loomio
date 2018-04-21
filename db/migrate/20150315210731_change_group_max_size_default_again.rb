class ChangeGroupMaxSizeDefaultAgain < ActiveRecord::Migration[4.2]
  def change
    change_column :groups, :max_size, :integer, default: 100
  end
end
