require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "shouldhave the content 'Cookie Party'" do
      visit '/static_pages/index'
      expect(page).to have_content('Cookie Party')
    end
  end
end
