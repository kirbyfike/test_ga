class OrganizationsController < ApplicationController
  
  def create
  	redirect_to root_url
  end
  
  def new
  	@organization = Organization.new
  end
end
