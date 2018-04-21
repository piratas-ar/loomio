class RenameCampaignsExampleDiscussionUrlToShowcaseUrl < ActiveRecord::Migration[4.2]
  def change
    rename_column :campaigns, :example_discussion_url, :showcase_url
  end
end
