class RemoveDashboardPreferences < ActiveRecord::Migration[4.2]
  def change
    remove_column :users, :dashboard_sort, :string
    remove_column :users, :dashboard_filter, :string 
  end
end
