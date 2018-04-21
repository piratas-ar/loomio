class AddEmailTemplateIdToEmails < ActiveRecord::Migration[4.2]
  def change
    add_column :emails, :email_template_id, :integer
    add_index :emails, :email_template_id
  end
end
