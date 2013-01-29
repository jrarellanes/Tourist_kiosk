class CreateEmergencyrequests < ActiveRecord::Migration
  def change
    create_table :emergencyrequests do |t|
      t.integer :iduser
      t.integer :idcorporation
      t.date :dateRequest

      t.timestamps
    end
  end
end
