class AddForeignKeysToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :place_id, :integer, null: false
    add_column :reviews, :user_id, :integer, null: false
    add_index "reviews", ["place_id"], name: "index_reviews_on_place_id", using: :btree
    add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree
    add_foreign_key "reviews", "places"
    add_foreign_key "reviews", "users"
  end
end
