class RenameWocoptionsToCampaigns < ActiveRecord::Migration[4.2]
  def change
    rename_table :woc_options, :campaigns
  end
end
