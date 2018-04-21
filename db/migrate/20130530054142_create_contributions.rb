class CreateContributions < ActiveRecord::Migration[4.2]
  def change
    create_table :contributions do |t|
      t.integer :user_id
      t.string :identifier_id
      t.string :response_code

      t.timestamps
    end
  end
end
