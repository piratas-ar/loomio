class AddUserToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :user_id, :integer
  end
end
