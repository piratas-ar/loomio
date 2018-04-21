class AddPollCanAddOptions < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :voter_can_add_options, :boolean, default: false, null: false
  end
end
