require 'spec_helper'

describe "/serials/edit.html.erb" do
  include SerialsHelper

  before(:each) do
    assigns[:serial] = @serial = stub_model(Serial,
      :new_record? => false
    )
  end

  it "renders the edit serial form" do
    render

    response.should have_tag("form[action=#{serial_path(@serial)}][method=post]") do
    end
  end
end
