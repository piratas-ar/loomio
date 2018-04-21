class AddIndexIndexMotionsOnAuthorIdToMotions < ActiveRecord::Migration[4.2]
  def change
    add_index "motions", ["author_id"], :name => "index_motions_on_author_id"
  end
end
