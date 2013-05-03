class UsersController < ApplicationController
	def new
		
		@org = Organization.find_by_directory_name!(request.subdomain)
		@user = @org.users.new

  		rescue ActiveRecord::RecordNotFound
  		redirect_to root_url	
	end
	
	def create
		
		@user = User.new(params[:user])
		
		if @user.save
			redirect_to root_url, :notice => "Signed up!"
		else
			render "new"
		end
	end
end
