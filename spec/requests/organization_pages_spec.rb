require 'spec_helper'

describe "Organization pages" do

  it "signs up an org after filling out page" do
  	organization = FactoryGirl.build(:organization)
  	visit signup_path
  	fill_in "organization_first_name", :with => organization.first_name
  	fill_in "organization_last_name", :with => organization.last_name
  	fill_in "organization_email", :with => organization.email
  	click_button "Create"
  end
end