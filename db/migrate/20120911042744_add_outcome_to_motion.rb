class AddOutcomeToMotion < ActiveRecord::Migration[4.2]
  def change
    add_column :motions, :outcome, :string
  end
end
