require 'spec_helper'

describe "caarts/new" do
  before(:each) do
    assign(:caart, stub_model(Caart).as_new_record)
  end

  it "renders new caart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", caarts_path, "post" do
    end
  end
end
