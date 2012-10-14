require 'spec_helper'

describe "Static pages" do

  describe "Help page" do
 
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
  end

  describe "About page" do

    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('about')
    end
  end
end

