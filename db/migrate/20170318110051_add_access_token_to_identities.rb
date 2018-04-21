class AddAccessTokenToIdentities < ActiveRecord::Migration[4.2]
  def change
    add_column :omniauth_identities, :access_token, :string, default: ""
    rename_column :omniauth_identities, :provider, :identity_type
  end
end
