class AddMaxSizeToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :max_size, :integer
  end
end
