class ProfilesController < ApplicationController

	before_filter :require_login

  def show
  	@user = User.find_by_id(params[:id])
  	if @user
  		@startups = @user.startups.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end

private

  def require_login
    unless current_user
    flash[:alert] = "You must create an account or log in to view profile pages"
      redirect_to login_url
    end
  end

end
