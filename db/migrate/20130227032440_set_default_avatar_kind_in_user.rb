class SetDefaultAvatarKindInUser < ActiveRecord::Migration[4.2]
  class User < ActiveRecord::Base
  end

  def up
    User.where(:avatar_kind => nil).
         update_all(:avatar_kind => 'initials')
    User.where(:avatar_kind => "\"\"").
         update_all(:avatar_kind => 'initials')
    change_column_default(:users, :avatar_kind, 'initials')
  end

  def down
    User.where(:avatar_kind => 'initials').
         update_all(:avatar_kind => nil)
    change_column_default(:users, :avatar_kind, nil)
  end
end
