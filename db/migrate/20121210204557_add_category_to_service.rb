class AddCategoryToService < ActiveRecord::Migration
  def self.up
    add_column :services, :service_category_id, :integer
  end

  def self.down
    remove_column :services, :service_category_id
  end
end
