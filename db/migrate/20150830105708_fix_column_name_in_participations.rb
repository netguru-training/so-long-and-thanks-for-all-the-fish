class FixColumnNameInParticipations < ActiveRecord::Migration
  def change
    rename_column :participations, :place_id, :user_id
    add_foreign_key "participations", "users"
  end
end
