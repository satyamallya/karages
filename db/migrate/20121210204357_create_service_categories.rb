class CreateServiceCategories < ActiveRecord::Migration
  def self.up
    create_table :service_categories do |t|
      t.integer :id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :service_categories
  end
end
