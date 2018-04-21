class RenameMembershipsEmailDiscussionProp < ActiveRecord::Migration[4.2]
  def change
    rename_column :memberships, :email_new_discussion_and_proposal_notifications, :email_new_discussions_and_proposals
  end
end
