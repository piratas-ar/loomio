class AddDisableDiscussionToMotions < ActiveRecord::Migration[4.2]
  def change
    add_column :motions, :disable_discussion, :boolean, default: false
  end
end
