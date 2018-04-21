class FixNewDiscussionSequences < ActiveRecord::Migration[4.2]
  def up
    Event.where('kind = ? AND sequence_id IS NOT NULL', :new_discussion).update_all(sequence_id: nil)
  end
end
