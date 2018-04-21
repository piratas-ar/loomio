class MembershipsRenameLastViewedAtToGroupLastViewedAt < ActiveRecord::Migration[4.2]
  def change
    rename_column :memberships, :last_viewed_at, :group_last_viewed_at
  end
end
