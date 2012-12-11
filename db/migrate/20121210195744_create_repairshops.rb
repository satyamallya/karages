class CreateRepairshops < ActiveRecord::Migration
  def self.up
    create_table :repairshops do |t|
      t.string :name
      t.string :address
      t.string :zip_code
      t.string :lat
      t.string :long
      t.string :phone_num
      t.string :business_license

      t.timestamps
    end
  end

  def self.down
    drop_table :repairshops
  end
end
