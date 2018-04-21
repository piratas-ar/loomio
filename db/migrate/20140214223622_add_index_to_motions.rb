class AddIndexToMotions < ActiveRecord::Migration[4.2]
  def change
    add_index :motions, [:discussion_id, :closed_at], order: {closed_at: :desc}
  end
end
