class SessionController < ApplicationController
	skip_before_action :authorized
	def create
		@user = User.find_by_alias(params[:alias])
		if @user && @user.password = params[:password]
			session[:user_access] = @user.type_of
			session[:user_id] = @user.id
			redirect_to '/welcome', notice: "User or Password is not correct" 
		else
			redirect_to '/login'
		end
	end
end
