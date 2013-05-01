require 'spec_helper'

describe "Organization pages" do

  it "XXXXX signs up an org after filling out page" do
  	organization = FactoryGirl.build(:organization)
  	visit signup_path
  	fill_in "organization_name", :with => organization.name
  	fill_in "organization_directory_name", :with => organization.directory_name
  	fill_in "organization_user_first_name", :with => "John"
  	fill_in "organization_user_last_name", :with => "Doe"
  	fill_in "organization_user_email", :with => "kirby@cloversites.com"
  	fill_in "organization_user_password", :with => "password"
  	fill_in "Password Confirm", :with => "password"
  	click_button "Create"
  end
end