class AddEmailNewMotionToGroup < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :email_new_motion, :boolean, default: true
  end
end
