class ArchiveDiscussionsInArchivedGroups < ActiveRecord::Migration[4.2]
  def up
    archived_groups = Group.unscoped.where('archived_at IS NOT NULL')
    archived_groups.each { |g| g.discussions.each &:archive! }
  end

  def down
  end
end
