class AddAnyoneCanParticipateToPolls < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :anyone_can_participate, :boolean, default: false, null: false
  end
end
