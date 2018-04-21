class AddLanguagePreferenceToUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :language_preference, :string
  end
end
