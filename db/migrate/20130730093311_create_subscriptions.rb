class CreateSubscriptions < ActiveRecord::Migration[4.2]
  def change
    create_table :subscriptions do |t|
      t.references :group
      t.integer :amount

      t.timestamps
    end
    add_index :subscriptions, :group_id
  end
end
