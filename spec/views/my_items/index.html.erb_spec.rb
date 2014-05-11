require 'spec_helper'

describe "my_items/index" do
  before(:each) do
    assign(:my_items, [
      stub_model(MyItem,
        :component_id => 1,
        :caart_id => 2
      ),
      stub_model(MyItem,
        :component_id => 1,
        :caart_id => 2
      )
    ])
  end

  it "renders a list of my_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
