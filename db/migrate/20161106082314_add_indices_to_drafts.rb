class AddIndicesToDrafts < ActiveRecord::Migration[4.2]
  def change
    add_index :drafts, [:user_id, :draftable_type, :draftable_id], unique: true
  end
end
