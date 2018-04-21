class AddTitleToDiscussions < ActiveRecord::Migration[4.2]
  def change
    add_column :discussions, :title, :string
  end
end
