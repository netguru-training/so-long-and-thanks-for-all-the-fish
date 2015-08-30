class FixForeignKeyInParticipations < ActiveRecord::Migration
  def change
    remove_foreign_key :participations, column: :user_id
    add_foreign_key "participations", "users", column: :user_id
  end
end
