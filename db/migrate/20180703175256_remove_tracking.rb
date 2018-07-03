class RemoveTracking < ActiveRecord::Migration[5.1]
  def change
    drop_table :ahoy_events
    drop_table :ahoy_messages
    drop_table :group_visits
    drop_table :organisation_visits
    drop_table :visits

    remove_column :usage_reports, :visits_count
  end
end
