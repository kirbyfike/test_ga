class OrganizationsController < ApplicationController
  
  def new
    @organization = Organization.new
    @organization.users.build
  end
  
  def create
  	
    @organization = Organization.create_from_signup(params[:organization])
    
    #@user = @organization.users.create(params[:organization][:user])
    
    if @organization.save
      
    	session[:user_id] = @user.id
    	redirect_to root_url, notice: "Thank you for signing up!"
      
    else
    	render "/signup"
    end
  
  end
end
