class AddViewableByToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :viewable_by, :string
  end
end
