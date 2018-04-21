class AddDestinationToContact < ActiveRecord::Migration[4.2]
  def change
    add_column :contact_messages, :destination, :string, default: 'contact@loomio.org'
  end
end
