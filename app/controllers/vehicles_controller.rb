class VehiclesController < ApplicationController
  
  def index
    @policy = Policy.find(params[:policy_id])
    @pol_id = @policy.id
    @vehicles = Vehicle.where(policy_id: @pol_id).page(params[:page]).per(1)
  end
end
