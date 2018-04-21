class FillInNameInUsers < ActiveRecord::Migration[4.2]
  def up
    User.all.each do |user|
      if user.name == nil
        user.name = user.email
        user.save
      end
    end
  end

  def down
  end
end
