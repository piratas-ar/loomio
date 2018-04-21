class RemoveSlackIdentity < ActiveRecord::Migration[4.2]
  def change
    remove_column :groups, :slack_identity_id, :integer
  end
end
