require "rails_helper"

RSpec.describe BecksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/becks").to route_to("becks#index")
    end

    it "routes to #new" do
      expect(:get => "/becks/new").to route_to("becks#new")
    end

    it "routes to #show" do
      expect(:get => "/becks/1").to route_to("becks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/becks/1/edit").to route_to("becks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/becks").to route_to("becks#create")
    end

    it "routes to #update" do
      expect(:put => "/becks/1").to route_to("becks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/becks/1").to route_to("becks#destroy", :id => "1")
    end

  end
end
