class IndexAhoyMessagesSentAt < ActiveRecord::Migration[4.2]
  def change
    add_index :ahoy_messages, :sent_at, order: :desc
  end
end
