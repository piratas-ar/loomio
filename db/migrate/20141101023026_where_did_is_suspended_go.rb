class WhereDidIsSuspendedGo < ActiveRecord::Migration[4.2]
  def change
    unless column_exists?(:memberships, :is_suspended)
      add_column :memberships, :is_suspended, :boolean, default: false, null: false
    end
  end
end
