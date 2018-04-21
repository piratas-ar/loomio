class AddBetaFeaturesToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :beta_features, :boolean, :default => false
  end
end
