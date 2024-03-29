class CreateProblems < ActiveRecord::Migration
  def self.up
    create_table :problems do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :priority

      t.timestamps
    end
  end

  def self.down
    drop_table :problems
  end
end
