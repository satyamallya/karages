class CreateProblemsServices < ActiveRecord::Migration
  def self.up
    create_table :problems_services, :id => false do |t|
        t.references :problems
        t.references :services
    end
  end

  def self.down
	drop_table :problems_services
  end
end
