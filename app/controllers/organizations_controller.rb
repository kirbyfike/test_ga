class OrganizationsController < ApplicationController
  
  def create
  	
  	@organization = Organization.new(params[:user])
	
	if @organization.save
		session[:user_id] = @organization.id
		redirect_to root_url, notice: "Thank you for signing up!"
	else
		render "new"
	end
  
  end
  
  def new
  	@organization = Organization.new
  end
end
