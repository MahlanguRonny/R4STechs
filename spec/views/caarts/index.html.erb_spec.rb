require 'spec_helper'

describe "caarts/index" do
  before(:each) do
    assign(:caarts, [
      stub_model(Caart),
      stub_model(Caart)
    ])
  end

  it "renders a list of caarts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
