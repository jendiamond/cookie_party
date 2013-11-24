require 'spec_helper'

describe "Static pages" do
  describe "index" do
    it "should have the content 'Cookie Party'" do
      visit '/static_pages/#index'
      expect(page).to have_content('Cookie Party')
    end
  end
end
