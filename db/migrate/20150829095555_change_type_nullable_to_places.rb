class ChangeTypeNullableToPlaces < ActiveRecord::Migration
  def up
    change_column :places, :type, :string, :null => false
  end

  def down
    change_column :places, :type, :string, :null => true
  end
end
