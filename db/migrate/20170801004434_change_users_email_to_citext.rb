class ChangeUsersEmailToCitext < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :email, :citext
  end
end
