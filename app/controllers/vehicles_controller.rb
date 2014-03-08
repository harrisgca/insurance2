class VehiclesController < ApplicationController

  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  before_action :get_policy
  before_action :get_vehicle, only:[:show, :edit, :update, :destroy]

  def index
    @policy = Policy.find(params[:policy_id])
    @pol_id = @policy.id
    @vehicles = Vehicle.where(policy_id: @pol_id)
  end

  def show
  end

  def new
  	@vehicle = Vehicle.new
  end

  def create
  	@vehicle = @policy.vehicles.new(post_params)
  	if
  		@vehicle.save
  		redirect_to @policy
  	else
  		render 'new'
  	end
  end

  def edit

  end

  def update
  	if
  		@vehicle.update(post_params)
  		redirect_to @policy
  	else
  		render 'edit'
  	end
  end

  def destroy
    @vehicle.destroy
    redirect_to policy_drivers_path
  end

  private
  	def post_params
  		params.require(:vehicle).permit(:id, :policy_id, :year, :make, :model, :vin, :usage, :usage_miles, :ann_miles, :grg_addr_1, :grg_addr_2, :grg_city, :grg_state, :grg_zip)
  	end

  	def get_vehicle
  		@vehicle = Vehicle.find(params[:id])
  	end

  	def get_policy
  		@policy = Policy.find(params[:policy_id])
  	end

end
