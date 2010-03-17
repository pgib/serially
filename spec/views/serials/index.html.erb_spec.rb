require 'spec_helper'

describe "/serials/index.html.erb" do
  include SerialsHelper

  before(:each) do
    assigns[:serials] = [
      stub_model(Serial),
      stub_model(Serial)
    ]
  end

  it "renders a list of serials" do
    render
  end
end
