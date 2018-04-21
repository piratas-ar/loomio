class ChangeDataTypeForMotionCloseDate < ActiveRecord::Migration[4.2]
  def up
    change_table :motions do |t|
      t.change :close_date, :datetime
    end
  end

  def down
    change_table :motions do |t|
      t.change :close_date, :date
    end
  end
end
