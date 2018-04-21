class AddOutcomeAuthorToMotions < ActiveRecord::Migration[4.2]
  def up
    add_column :motions, :outcome_author_id, :integer
  end

  def down
    remove_column :motions, :outcome_author_id
  end
end
