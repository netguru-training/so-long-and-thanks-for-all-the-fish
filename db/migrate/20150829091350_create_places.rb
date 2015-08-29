class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
      t.string :street
      t.string :city
      t.string :country
      t.string :type, null: true
      t.float :avg_price, null: true
      t.timestamps null: false
    end
  end
end
