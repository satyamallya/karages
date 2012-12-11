class CreateEstimates < ActiveRecord::Migration
  def self.up
    create_table :estimates do |t|
      t.integer :id
      t.integer :repair_id
      t.integer :vehicle_id
      t.float :labor_hrs
      t.float :labor_cost
      t.float :parts_cost
      t.float :duration
      t.float :second_parts_cost

      t.timestamps
    end
  end

  def self.down
    drop_table :estimates
  end
end
