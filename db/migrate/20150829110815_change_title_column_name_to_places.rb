class ChangeTitleColumnNameToPlaces < ActiveRecord::Migration
  def up
    rename_column :places, :title, :name
  end

  def down
    rename_column :places, :name, :title
  end
end
