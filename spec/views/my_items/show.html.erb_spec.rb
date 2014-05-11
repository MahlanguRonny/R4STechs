require 'spec_helper'

describe "my_items/show" do
  before(:each) do
    @my_item = assign(:my_item, stub_model(MyItem,
      :component_id => 1,
      :caart_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
