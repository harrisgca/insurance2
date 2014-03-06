class DriversController < ApplicationController

  before_filter :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]

  def index
    @policy = Policy.find(params[:policy_id])
    @pol_id = @policy.id
    @drivers = Driver.where(policy_id: @pol_id).page(params[:page]).per(1)
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def edit
    @policy = Policy.find(params[:policy_id])
    @driver = Driver.find(params[:id])
    @drivers = @policy.drivers.all
  end

  def update
    @policy = Policy.find(params[:policy_id])
    @driver = Driver.find(params[:id])

    if @driver.update(post_params)
      redirect_to @policy
    else
      render 'edit'
    end
  end

  def new
    @policy = Policy.find(params[:policy_id])
    @driver = @policy.drivers.new
  end

  def create
    @policy = Policy.find(params[:policy_id])
    @driver = @policy.drivers.new(post_params)

    if @driver.save
      redirect_to @policy
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:driver).permit(:first_name, :middle_init, :last_name, :birthdate, :relationship, :vehicle)
  end
end
