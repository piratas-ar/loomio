class ChangeMotionOutcomeToText < ActiveRecord::Migration[4.2]
  def change
    change_column :motions, :outcome, :text
  end
end
