class Message < ActiveRecord::Base
	belongs_to :policy
	belongs_to :user
end
