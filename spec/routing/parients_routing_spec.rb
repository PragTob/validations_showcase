require "rails_helper"

RSpec.describe ParientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/parients").to route_to("parients#index")
    end

    it "routes to #new" do
      expect(:get => "/parients/new").to route_to("parients#new")
    end

    it "routes to #show" do
      expect(:get => "/parients/1").to route_to("parients#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/parients/1/edit").to route_to("parients#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/parients").to route_to("parients#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/parients/1").to route_to("parients#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/parients/1").to route_to("parients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/parients/1").to route_to("parients#destroy", :id => "1")
    end
  end
end
