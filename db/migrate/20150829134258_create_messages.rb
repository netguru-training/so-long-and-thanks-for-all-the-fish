class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content, null: false
      t.integer :event_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end

    add_index "messages", ["event_id"], name: "index_messages_on_event_id", using: :btree
    add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree
    add_foreign_key "messages", "events"
    add_foreign_key "messages", "users"
  end
end
