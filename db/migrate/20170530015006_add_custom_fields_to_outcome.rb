class AddCustomFieldsToOutcome < ActiveRecord::Migration[4.2]
  def change
    add_column :outcomes, :custom_fields, :jsonb, default: {}, null: false
  end
end
