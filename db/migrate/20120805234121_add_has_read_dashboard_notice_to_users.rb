class AddHasReadDashboardNoticeToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :has_read_dashboard_notice, :boolean, :default => false,
      :null => false
  end
end
