require 'spec_helper'

describe SerialsController do

  def mock_serial(stubs={})
    @mock_serial ||= mock_model(Serial, stubs)
  end

  describe "GET index" do
    it "assigns all serials as @serials" do
      Serial.stub!(:find).with(:all).and_return([mock_serial])
      get :index
      assigns[:serials].should == [mock_serial]
    end
  end

  describe "GET show" do
    it "assigns the requested serial as @serial" do
      Serial.stub!(:find).with("37").and_return(mock_serial)
      get :show, :id => "37"
      assigns[:serial].should equal(mock_serial)
    end
  end

  describe "GET new" do
    it "assigns a new serial as @serial" do
      Serial.stub!(:new).and_return(mock_serial)
      get :new
      assigns[:serial].should equal(mock_serial)
    end
  end

  describe "GET edit" do
    it "assigns the requested serial as @serial" do
      Serial.stub!(:find).with("37").and_return(mock_serial)
      get :edit, :id => "37"
      assigns[:serial].should equal(mock_serial)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created serial as @serial" do
        Serial.stub!(:new).with({'these' => 'params'}).and_return(mock_serial(:save => true))
        post :create, :serial => {:these => 'params'}
        assigns[:serial].should equal(mock_serial)
      end

      it "redirects to the created serial" do
        Serial.stub!(:new).and_return(mock_serial(:save => true))
        post :create, :serial => {}
        response.should redirect_to(serial_url(mock_serial))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved serial as @serial" do
        Serial.stub!(:new).with({'these' => 'params'}).and_return(mock_serial(:save => false))
        post :create, :serial => {:these => 'params'}
        assigns[:serial].should equal(mock_serial)
      end

      it "re-renders the 'new' template" do
        Serial.stub!(:new).and_return(mock_serial(:save => false))
        post :create, :serial => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested serial" do
        Serial.should_receive(:find).with("37").and_return(mock_serial)
        mock_serial.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :serial => {:these => 'params'}
      end

      it "assigns the requested serial as @serial" do
        Serial.stub!(:find).and_return(mock_serial(:update_attributes => true))
        put :update, :id => "1"
        assigns[:serial].should equal(mock_serial)
      end

      it "redirects to the serial" do
        Serial.stub!(:find).and_return(mock_serial(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(serial_url(mock_serial))
      end
    end

    describe "with invalid params" do
      it "updates the requested serial" do
        Serial.should_receive(:find).with("37").and_return(mock_serial)
        mock_serial.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :serial => {:these => 'params'}
      end

      it "assigns the serial as @serial" do
        Serial.stub!(:find).and_return(mock_serial(:update_attributes => false))
        put :update, :id => "1"
        assigns[:serial].should equal(mock_serial)
      end

      it "re-renders the 'edit' template" do
        Serial.stub!(:find).and_return(mock_serial(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested serial" do
      Serial.should_receive(:find).with("37").and_return(mock_serial)
      mock_serial.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the serials list" do
      Serial.stub!(:find).and_return(mock_serial(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(serials_url)
    end
  end

end
