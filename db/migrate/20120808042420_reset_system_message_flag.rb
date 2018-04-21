class ResetSystemMessageFlag < ActiveRecord::Migration[4.2]
  class User < ActiveRecord::Base
  end

  def up
    User.update_all(:has_read_system_notice => false)
  end

  def down
  end
end
