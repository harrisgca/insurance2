class DriversController < ApplicationController
  def edit
    @policy = Policy.find(params[:policy_id]) 
    @driver = Driver.find(params[:id])
    @drivers = @policy.drivers.all
  end
  
  def index
    @policy = Policy.find(params[:policy_id])
    @pol_id = @policy.id
    @drivers = Driver.where(policy_id: @pol_id).page(params[:page]).per(1)
  end
end
