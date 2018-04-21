class CreateAnnouncements < ActiveRecord::Migration[4.2]
  def change
    unless table_exists? :announcements
      create_table :announcements do |t|
        t.text :message, null: false
        t.string :locale, default: "en", null: false
        t.datetime :starts_at, null: false
        t.datetime :ends_at, null: false

        t.timestamps
      end
    end
  end
end
