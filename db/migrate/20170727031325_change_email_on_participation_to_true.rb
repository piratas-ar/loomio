class ChangeEmailOnParticipationToTrue < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :email_on_participation, :boolean, default: true, null: false
  end
end
