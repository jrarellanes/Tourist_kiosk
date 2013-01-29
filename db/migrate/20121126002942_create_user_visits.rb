class CreateUserVisits < ActiveRecord::Migration
  def change
    create_table :user_visits do |t|
      t.integer :iduser
      t.integer :idsite
      t.date :dateVisit
      t.integer :ratig

      t.timestamps
    end
  end
end
