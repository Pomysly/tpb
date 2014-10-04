require 'rails_helper'

RSpec.describe "Moodentries", :type => :request do
  describe "GET /moodentries" do
    it "works! (now write some real specs)" do
      get moodentries_path
      expect(response).to have_http_status(200)
    end
  end
end
