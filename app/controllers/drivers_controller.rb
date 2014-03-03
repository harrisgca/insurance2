class DriversController < ApplicationController
  def edit
    @policy = Policy.find(params[:policy_id]) 
    @driver = @policy.drivers.all
  end
end
