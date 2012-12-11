class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :vehicle_id

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
