class MigrateUndecidedCounts < ActiveRecord::Migration[4.2]
  def change
    # Poll.where(example: false).find_each(batch_size: 100).map(&:update_undecided_user_count)
  end
end
