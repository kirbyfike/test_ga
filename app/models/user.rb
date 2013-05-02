class User < ActiveRecord::Base
  has_secure_password
  
  attr_accessible :organizations_attributes, :first_name, :last_name, :email, :password, :password_confirmation
  
  belongs_to :organization
 
end