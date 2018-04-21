class AddStatementToVotes < ActiveRecord::Migration[4.2]
  def change
    add_column :votes, :statement, :string
  end
end
