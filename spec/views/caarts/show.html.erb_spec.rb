require 'spec_helper'

describe "caarts/show" do
  before(:each) do
    @caart = assign(:caart, stub_model(Caart))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
