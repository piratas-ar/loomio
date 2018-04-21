class PopulateExperiencesForMemberships < ActiveRecord::Migration[4.2]
  def up
    Membership.update_all experiences: { welcomeModal: true }
  end

  def down
    Membership.update_all experiences: {}
  end
end
