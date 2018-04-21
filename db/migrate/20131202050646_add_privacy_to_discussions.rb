class AddPrivacyToDiscussions < ActiveRecord::Migration[4.2]
  def change
    add_column :discussions, :private, :boolean, null: true
  end
end
