class Policy < ActiveRecord::Base
  has_many :drivers
  has_many :vehicles
end
