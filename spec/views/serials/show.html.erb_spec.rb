require 'spec_helper'

describe "/serials/show.html.erb" do
  include SerialsHelper
  before(:each) do
    assigns[:serial] = @serial = stub_model(Serial)
  end

  it "renders attributes in <p>" do
    render
  end
end
