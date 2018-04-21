class AddProposalOutcomesCountToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :proposal_outcomes_count, :integer, default: 0, null: false
  end
end
