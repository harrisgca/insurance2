class PoliciesController < ApplicationController
  
  def index
    @policies = Policy.all
  end
  
  def show
    @policy = Policy.find(params[:id])
    @pol_id = @policy.id
    @driver = @policy.drivers.first
    @drivers = Driver.where(policy_id: @pol_id)
  end
end
