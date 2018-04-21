class AddLatestToOutcomes < ActiveRecord::Migration[4.2]
  def change
    add_column :outcomes, :latest, :boolean, default: true, null: false
  end
end
