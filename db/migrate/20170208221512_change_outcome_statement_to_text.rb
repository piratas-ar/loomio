class ChangeOutcomeStatementToText < ActiveRecord::Migration[4.2]
  def change
    change_column :outcomes, :statement, :text
  end
end
