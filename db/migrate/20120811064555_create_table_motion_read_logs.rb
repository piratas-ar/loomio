class CreateTableMotionReadLogs < ActiveRecord::Migration[4.2]
  create_table :motion_read_logs do |t|
    t.integer :motion_activity_when_last_read
    t.integer :motion_id
    t.integer :user_id
    t.timestamps

    t.timestamps
  end
end
