class Message < ActiveRecord::Base
	belongs_to :policy
	belongs_to :user
	validates :user_id, presence: true

end
