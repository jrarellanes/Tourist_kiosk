class CreateClasifications < ActiveRecord::Migration
  def change
    create_table :clasifications do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
