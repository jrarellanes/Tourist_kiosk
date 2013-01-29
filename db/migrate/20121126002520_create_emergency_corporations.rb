class CreateEmergencyCorporations < ActiveRecord::Migration
  def change
    create_table :emergency_corporations do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.string :location

      t.timestamps
    end
  end
end
