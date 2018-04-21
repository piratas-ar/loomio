class AddNameAndLogoToIdentities < ActiveRecord::Migration[4.2]
  def change
    add_column :omniauth_identities, :logo, :string, null: true
  end
end
