class PopulateExpectedSizeForGroupRequests < ActiveRecord::Migration[4.2]
  def up
    GroupRequest.where("expected_size = '' OR expected_size IS NULL").update_all(expected_size: "(Not specified)")
  end

  def down
  end
end
