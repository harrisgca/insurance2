class DriversController < ApplicationController

  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  before_action :get_policy
  before_action :get_driver, only:[:show, :edit, :update, :destroy]

  def index
    @pol_id = @policy.id
    @drivers = Driver.where(policy_id: @pol_id)
  end

  def show
  end

  def edit
    @drivers = @policy.drivers.all
  end

  def update

    if @driver.update(post_params)
      redirect_to @policy
    else
      render 'edit'
    end
  end

  def new
    @driver = @policy.drivers.new
  end

  def create
    @driver = @policy.drivers.new(post_params)

    if @driver.save
      redirect_to @policy
    else
      render 'new'
    end
  end

  def destroy
    @driver.destroy
    redirect_to policy_drivers_path
  end

  private

  def post_params
    params.require(:driver).permit(:first_name, :middle_init, :last_name, :birthdate, :relationship, :vehicle)
  end

  def get_policy
    @policy = Policy.find(params[:policy_id])
  end

  def get_driver
    @driver = Driver.find(params[:id])
  end
end
