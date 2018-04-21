class RemoveContributions < ActiveRecord::Migration[4.2]
  def change
    drop_table :contributions
  end
end
