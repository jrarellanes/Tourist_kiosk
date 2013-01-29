class CreatePlacesInterests < ActiveRecord::Migration
  def change
    create_table :places_interests do |t|
      t.string :name
      t.string :ubication
      t.string :horary
      t.text :description
      t.string :popularity
      t.string :idClasification
      t.string :urlImage

      t.timestamps
    end
  end
end
