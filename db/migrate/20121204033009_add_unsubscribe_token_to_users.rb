class AddUnsubscribeTokenToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :unsubscribe_token, :string
    add_index :users, :unsubscribe_token, unique: true
  end
end
