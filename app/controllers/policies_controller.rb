class PoliciesController < ApplicationController

  
  def index
    @policies = Policy.all
  end
  
  def show
    @driver = Driver.find(params[:id])
    @policy = Policy.find(params[:id])
    @pol_id = @policy.id
    @driver1 = @policy.drivers.first
    @drivers = Driver.where(policy_id: @pol_id)
  end
  

end
