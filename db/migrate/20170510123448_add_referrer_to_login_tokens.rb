class AddReferrerToLoginTokens < ActiveRecord::Migration[4.2]
  def change
    add_column :login_tokens, :redirect, :string, null: true
  end
end
