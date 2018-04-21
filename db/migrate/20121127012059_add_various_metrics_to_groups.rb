class AddVariousMetricsToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :distribution_metric, :integer
    add_column :groups, :sectors_metric, :string
    add_column :groups, :other_sectors_metric, :string
  end
end
