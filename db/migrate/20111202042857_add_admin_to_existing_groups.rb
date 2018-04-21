class AddAdminToExistingGroups < ActiveRecord::Migration[4.2]
  class Group < ActiveRecord::Base
  end
  def up
    Group.all.each do |group|
      m = group.memberships.first
      unless m.nil?
        m.access_level = 'admin'
        m.save
      end
    end
  end
  def down
    Group.all.each do |group|
      m = group.memberships.first
      unless m.nil?
        m.access_level = 'member'
        m.save
      end
    end
  end
end
