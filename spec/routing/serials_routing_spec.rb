require 'spec_helper'

describe SerialsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/serials" }.should route_to(:controller => "serials", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/serials/new" }.should route_to(:controller => "serials", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/serials/1" }.should route_to(:controller => "serials", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/serials/1/edit" }.should route_to(:controller => "serials", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/serials" }.should route_to(:controller => "serials", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/serials/1" }.should route_to(:controller => "serials", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/serials/1" }.should route_to(:controller => "serials", :action => "destroy", :id => "1") 
    end
  end
end
