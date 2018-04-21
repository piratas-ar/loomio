class AddPollOptionToOutcome < ActiveRecord::Migration[4.2]
  def change
    add_column :outcomes, :poll_option_id, :integer, null: true
  end
end
