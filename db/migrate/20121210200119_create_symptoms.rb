class CreateSymptoms < ActiveRecord::Migration
  def self.up
    create_table :symptoms do |t|
      t.integer :id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :symptoms
  end
end
