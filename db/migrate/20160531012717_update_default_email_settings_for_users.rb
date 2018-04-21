class UpdateDefaultEmailSettingsForUsers < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :email_on_participation, :boolean, default: false, null: false
    change_column :users, :default_membership_volume, :integer, default: 2, null: false
  end
end
