class Organization < ActiveRecord::Base
  attr_accessible :name, :directory_name, :email, :first_name, :last_name, :users_attributes
  
  has_many :users
  
  accepts_nested_attributes_for :users
  
  
  def self.create_from_signup(params)
    
    self.create(:name=>params[:name],:directory_name=>params[:directory_name],:first_name=>params[:user][:first_name], :last_name=>params[:user][:last_name], :email=>params[:user][:email])
    
    #self.users.create(params[:user])
  end
end
