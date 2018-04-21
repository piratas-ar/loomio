class AddParamsToContributions < ActiveRecord::Migration[4.2]
  def change
    add_column :contributions, :params, :text
  end
end
