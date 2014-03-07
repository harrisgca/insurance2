class PoliciesController < ApplicationController

  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]

  def index
    @policies = Policy.all
  end

  def show
    @driver = Driver.find(params[:id])
    @policy = Policy.find(params[:id])
    @pol_id = @policy.id
    @drivers = Driver.where(policy_id: @pol_id)
    @vehicles = Vehicle.where(policy_id: @pol_id)
  end

  def new
    @policy = current_user.policies.new
  end

  def create
    @policy = current_user.policies.new(post_params)
    if
      @policy.save
      redirect_to @policy
    else
      render 'new'
    end
  end

  def edit
    @policy = Policy.find(params[:id])
  end

  def update
    @policy = Policy.find(params[:id])
    if @policy.update(post_params)
      redirect_to @policy
    else
      render 'edit'
    end
  end

  def destroy
    @policy = Policy.find(params[:id])
    @policy.destroy
    redirect_to policies_path
  end

  private
    def post_params
      params.require(:policy).permit(:id, :policy_id, :mail_addr_1,:mail_addr_2,:mail_addr_city,:mail_addr_state,:mail_addr_zip)
    end

end