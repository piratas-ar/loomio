class AddStanceData < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :stance_data, :jsonb, default: {}
  end
end
