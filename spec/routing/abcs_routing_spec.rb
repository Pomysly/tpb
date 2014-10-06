require "rails_helper"

RSpec.describe AbcsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/abcs").to route_to("abcs#index")
    end

    it "routes to #new" do
      expect(:get => "/abcs/new").to route_to("abcs#new")
    end

    it "routes to #show" do
      expect(:get => "/abcs/1").to route_to("abcs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/abcs/1/edit").to route_to("abcs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/abcs").to route_to("abcs#create")
    end

    it "routes to #update" do
      expect(:put => "/abcs/1").to route_to("abcs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/abcs/1").to route_to("abcs#destroy", :id => "1")
    end

  end
end
