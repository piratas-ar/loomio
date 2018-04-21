class RemoveIdentities < ActiveRecord::Migration[4.2]
  def change
    drop_table :identities
    add_column :omniauth_identities, :custom_fields, :jsonb, default: {}, null: false
  end
end
