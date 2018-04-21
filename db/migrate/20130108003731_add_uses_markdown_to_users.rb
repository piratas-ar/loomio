class AddUsesMarkdownToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :uses_markdown, :boolean, default: false
  end
end
