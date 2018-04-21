class AddIndexIndexNameToGroups < ActiveRecord::Migration[4.2]
  def change
    add_index "groups", ["name"], :name => "index_groups_on_name"
  end
end
