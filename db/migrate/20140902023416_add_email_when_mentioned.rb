class AddEmailWhenMentioned < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :email_when_mentioned, :boolean, default: true, null: false
  end
end
