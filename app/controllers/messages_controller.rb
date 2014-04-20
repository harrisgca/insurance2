class MessagesController < ApplicationController

before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
before_action :get_policy

def new
	@message = @policy.messages.new
	@message.user_id = current_user.id
end

def create
	@message = @policy.messages.new(post_params	)
	@message.user_id = current_user.id
	
	if @message.save
		redirect_to policy_messages_path(@policy)
	else
		render 'new'
	end
end

def edit
	@messages = @policy.messages.all
	@message = Message.find(params[:id])
end

def update

	@message = Message.find(params[:id])
	if @message.update(post_params)
		redirect_to policy_messages_path(@policy)
	else
		render 'edit'
	end
end

def index
	@pol_id = @policy.id
	@messages = Message.where(policy_id: @pol_id).order("created_at desc")
end

def destroy
	@message = Message.find(params[:id])
	@message.destroy
	redirect_to policy_messages_path
end




private

def post_params
	params.require(:message).permit(:policy_id, :user_id, :text)
end

def get_policy
	@policy = Policy.find(params[:policy_id])
end

end
