class ChangeWhoDunnitToInt < ActiveRecord::Migration[4.2]
  def change
    ActiveRecord::Base.connection.execute "ALTER TABLE versions ALTER COLUMN whodunnit TYPE integer USING (whodunnit::integer)"
  end
end
