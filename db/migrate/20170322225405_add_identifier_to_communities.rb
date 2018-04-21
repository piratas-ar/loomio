class AddIdentifierToCommunities < ActiveRecord::Migration[4.2]
  def change
    add_column :communities, :identifier, :string, null: true, index: true
  end
end
