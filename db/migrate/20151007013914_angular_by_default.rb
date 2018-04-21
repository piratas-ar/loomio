class AngularByDefault < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :angular_ui_enabled, :boolean, default: true, null: false
  end
end
