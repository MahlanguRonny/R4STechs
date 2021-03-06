require 'spec_helper'

describe "components/index" do
  before(:each) do
    assign(:components, [
      stub_model(Component,
        :name => "Name",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      ),
      stub_model(Component,
        :name => "Name",
        :description => "MyText",
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
