class AddJsToThemes < ActiveRecord::Migration[4.2]
  def change
    add_column :themes, :javascript, :text
  end
end
