require 'spec_helper'

describe "Pages" do
  describe "GET /pages" do
    it "works! (now write some real specs)" do
      
      visit root_path
      page.should have_content("Sample App")
    end
  end
end