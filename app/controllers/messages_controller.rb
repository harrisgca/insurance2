class MessagesController < ApplicationController

before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]



private

def get_policy
	@policy = Policy.find(params[:policy_id])
end

end
