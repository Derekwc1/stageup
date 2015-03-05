class StartupsController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!

  respond_to :html



  def show
    respond_with(@startup)
  end

  def new
    @startup = Startup.new
    respond_with(@startup)
  end

  def edit
    if current_user.id == @startup.user_id
      render
    else
    flash[:alert] = "You have ventured down the wrong path"
    redirect_to login_url
  end
  end

  def create
    @startup = Startup.new(startup_params)
    @startup.user_id = current_user.id
    @startup.save
    respond_with(@startup)
  end

  def update
    @startup.update(startup_params)
    respond_with(@startup)
  end

  def destroy
    @startup.destroy
    respond_with(@startup)
  end

  private
    def set_startup
      @startup = Startup.find(params[:id])
    end

    def startup_params
      params.require(:startup).permit(:name, :pitch, :position, :equity, :stage, :startuppitch, :startupurl, :startuptwiturl, :corole, :duration)
    end
end
