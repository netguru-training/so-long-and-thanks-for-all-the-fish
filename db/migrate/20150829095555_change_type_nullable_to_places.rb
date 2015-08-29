class ChangeTypeNullableToPlaces < ActiveRecord::Migration
  def up
    change_column :places, :type, null: false
  end

  def down
    change_column :places, :type, null: true
  end
end
