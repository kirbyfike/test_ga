class SessionsController < ApplicationController
  def new
  	@org = Organization.find_by_directory_name!(request.subdomain)

  	rescue ActiveRecord::RecordNotFound
  		redirect_to root_url
  end
end