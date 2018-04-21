class MakeExistingGroupsPrivate < ActiveRecord::Migration[4.2]
  class Group < ActiveRecord::Base
  end
  def up
    Group.all.each do |group|
      group.viewable_by = :members
      group.save
    end
  end

  def down
  end
end
