class CreateWebhooks < ActiveRecord::Migration[4.2]
  def change
    if ActiveRecord::Base.connection.table_exists? :webhooks
      drop_table :webhooks
    end
    create_table :webhooks do |t|
      t.references :hookable, polymorphic: true, index: true
      t.string :kind, null: false
      t.string :uri, null: false
      t.text   :event_types, array: true, default: []
    end
  end
end
