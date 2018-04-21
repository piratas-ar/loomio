class AddDiscussionToMotion < ActiveRecord::Migration[4.2]
  def up
    change_table :motions do |t|
      t.references :discussion
    end
    add_index :motions, :discussion_id
  end

  def down
    change_table :motions do |t|
      t.remove :discussion
    end
  end
end
