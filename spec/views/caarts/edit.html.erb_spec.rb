require 'spec_helper'

describe "caarts/edit" do
  before(:each) do
    @caart = assign(:caart, stub_model(Caart))
  end

  it "renders the edit caart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", caart_path(@caart), "post" do
    end
  end
end
