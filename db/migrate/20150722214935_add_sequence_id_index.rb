class AddSequenceIdIndex < ActiveRecord::Migration[4.2]
  def change
    add_index :events, :sequence_id
  end
end
