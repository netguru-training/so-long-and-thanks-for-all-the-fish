class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :date, null: false
      t.integer :place_id, null: false
      t.timestamps null: false
    end

    add_index "events", ["place_id"], name: "index_events_on_place_id", using: :btree
    add_foreign_key "events", "places"
  end
end
