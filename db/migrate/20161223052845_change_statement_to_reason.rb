class ChangeStatementToReason < ActiveRecord::Migration[4.2]
  def change
    rename_column :stances, :statement, :reason
  end
end
