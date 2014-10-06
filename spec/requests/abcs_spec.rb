require 'rails_helper'

RSpec.describe "Abcs", :type => :request do
  describe "GET /abcs" do
    it "works! (now write some real specs)" do
      get abcs_path
      expect(response).to have_http_status(200)
    end
  end
end
