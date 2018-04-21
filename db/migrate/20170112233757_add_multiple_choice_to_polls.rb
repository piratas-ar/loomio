class AddMultipleChoiceToPolls < ActiveRecord::Migration[4.2]
  def change
    add_column :polls, :multiple_choice, :boolean, default: false, null: false
  end
end
