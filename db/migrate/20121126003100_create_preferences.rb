class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :iduser
      t.integer :idsite
      t.date :dateRegister

      t.timestamps
    end
  end
end
