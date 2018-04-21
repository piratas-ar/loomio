class AddCloseDaterToMotions < ActiveRecord::Migration[4.2]
  def change
    add_column :motions, :close_date, :date
  end
end
