class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :event_id, null: false
      t.integer :place_id, null: false
      t.timestamps null: false
    end

    add_index "participations", ["place_id"], name: "index_participations_on_place_id", using: :btree
    add_index "participations", ["event_id"], name: "index_participations_on_event_id", using: :btree
    add_foreign_key "participations", "places"
    add_foreign_key "participations", "events"
  end
end
