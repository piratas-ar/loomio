class CreateWocOptions < ActiveRecord::Migration[4.2]
  def change
    drop_table :woc_options if table_exists? :woc_options
    create_table :woc_options do |t|
      t.string :example_discussion_url

      t.timestamps
    end
  end
end
