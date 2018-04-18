class AddEmailVerifiedToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :email_verified, :boolean, null: false, default: true
    change_column :users, :email_verified, :boolean, null: false, default: false
  end
end
