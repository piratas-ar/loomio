class AddCustomFieldsToEvent < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :custom_fields, :jsonb, default: {}, null: false
  end
end
