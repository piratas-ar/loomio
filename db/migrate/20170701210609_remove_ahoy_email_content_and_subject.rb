class RemoveAhoyEmailContentAndSubject < ActiveRecord::Migration[4.2]
  def change
    remove_column :ahoy_messages, :content, :text
    remove_column :ahoy_messages, :subject, :string
  end
end
