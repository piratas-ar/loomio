class AddMotionTypeToMotions < ActiveRecord::Migration[4.2]
  def change
    add_column :motions, :motion_type, :string, default: 'proposal'
  end
end
