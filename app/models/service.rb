class Service < ActiveRecord::Base
  has_and_belongs_to_many :problems
  belongs_to :service_category
end
