class GenerateEmailAPIKeysForUsers < ActiveRecord::Migration[4.2]
  def up
    User.reset_column_information
    User.find_each do |user|
      user.update_attribute(:email_api_key, SecureRandom.hex(16))
    end
  end

  def down
  end
end
