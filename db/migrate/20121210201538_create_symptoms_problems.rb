class CreateSymptomsProblems < ActiveRecord::Migration
  def self.up
    create_table :symptoms_problems, :id => false do |t|
        t.references :symptom
        t.references :problem
    end
  end

  def self.down
	drop_table :symptoms_problems
  end
end
