class WelcomeController < ApplicationController
  def index
  	if user_signed_in?
  		@profile = Profile.by_email(current_user.email).first
  		if @profile == nil
  			@profile = Profile.new
  			@profile.email = current_user.email
  			@profile.save
  		end
  	end
  end
end
