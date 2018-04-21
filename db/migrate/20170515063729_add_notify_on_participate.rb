class AddNotifyOnParticipate < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :notify_on_participate, :boolean, default: false, null: false
  end
end
