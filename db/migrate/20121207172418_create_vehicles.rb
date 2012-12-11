class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.integer:id
      t.string :year
      t.string :maker
      t.string :submodel
      t.string :body_style
      t.string :engines
      t.string :transmission
      t.string :drivetrains
      t.string :performance
      t.string :handling
      t.text :exterior
      t.text :interior

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
