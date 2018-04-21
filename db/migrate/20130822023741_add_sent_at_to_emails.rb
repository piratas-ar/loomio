class AddSentAtToEmails < ActiveRecord::Migration[4.2]
  def change
    add_column :emails, :sent_at, :datetime
  end
end
