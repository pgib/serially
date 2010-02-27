require 'spec_helper'

describe "/serials/new.html.erb" do
  include SerialsHelper

  before(:each) do
    assigns[:serial] = stub_model(Serial,
      :new_record? => true
    )
  end

  it "renders new serial form" do
    render

    response.should have_tag("form[action=?][method=post]", serials_path) do
    end
  end
end
