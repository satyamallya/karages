class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.string :sex
      t.string :age
      t.string :lastCity
      t.string :lastZip
      t.string :lastLat
      t.string :lastLong

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
