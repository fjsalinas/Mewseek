class WelcomeController < ApplicationController
  def show
  	if current_user.present?
  		redirect_to admin_index_path
  	else
  		render :layout => false
  	end
  end
end
