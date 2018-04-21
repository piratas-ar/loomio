class AddNextStepsCompletedToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :next_steps_completed, :boolean, :default => false, :null => false
  end
end
