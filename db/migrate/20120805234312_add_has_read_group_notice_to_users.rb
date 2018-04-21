class AddHasReadGroupNoticeToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :has_read_group_notice, :boolean, :default => false,
      :null => false
  end
end
