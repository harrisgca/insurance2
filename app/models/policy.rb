class Policy < ActiveRecord::Base
  has_many :drivers
  has_many :vehicles
  belongs_to :user
  has_many :messages

end
