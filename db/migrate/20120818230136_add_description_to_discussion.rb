class AddDescriptionToDiscussion < ActiveRecord::Migration[4.2]
  def change
    add_column :discussions, :description, :text
  end
end
