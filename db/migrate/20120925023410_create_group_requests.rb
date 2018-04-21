class CreateGroupRequests < ActiveRecord::Migration[4.2]
  def change
    create_table :group_requests, :force => true do |t|
      t.string :name
      t.integer :expected_size
      t.text :description
      t.string :admin_email
      t.text :member_emails

      t.timestamps
    end
  end
end
