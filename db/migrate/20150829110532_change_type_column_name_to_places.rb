class ChangeTypeColumnNameToPlaces < ActiveRecord::Migration
  def up
    rename_column :places, :type, :description
  end

  def down
    rename_column :places, :description, :type
  end
end
