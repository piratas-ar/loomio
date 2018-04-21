class AddExperimentsEnabledToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :enable_experiments, :boolean, default: false
  end
end
