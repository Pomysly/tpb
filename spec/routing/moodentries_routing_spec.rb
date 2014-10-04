require "rails_helper"

RSpec.describe MoodentriesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/moodentries").to route_to("moodentries#index")
    end

    it "routes to #new" do
      expect(:get => "/moodentries/new").to route_to("moodentries#new")
    end

    it "routes to #show" do
      expect(:get => "/moodentries/1").to route_to("moodentries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/moodentries/1/edit").to route_to("moodentries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/moodentries").to route_to("moodentries#create")
    end

    it "routes to #update" do
      expect(:put => "/moodentries/1").to route_to("moodentries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/moodentries/1").to route_to("moodentries#destroy", :id => "1")
    end

  end
end
