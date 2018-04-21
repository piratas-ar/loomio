class CreateContactMessages < ActiveRecord::Migration[4.2]
  def change
    create_table :contact_messages do |t|
      t.string :name
      t.integer :user_id
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
