class Organization < ActiveRecord::Base
  attr_accessible :name, :directory_name, :email, :first_name, :last_name, :users_attributes
  
  has_many :users
  
  accepts_nested_attributes_for :users, allow_destroy: true
end
