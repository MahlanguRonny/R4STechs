require 'spec_helper'

describe "store_products/index" do
  before(:each) do
    assign(:store_products, [
      stub_model(StoreProduct,
        :name => "Name",
        :categoryid => 1,
        :quantity => 2,
        :supplierid => 3,
        :image_url => "Image Url",
        :price => "9.99"
      ),
      stub_model(StoreProduct,
        :name => "Name",
        :categoryid => 1,
        :quantity => 2,
        :supplierid => 3,
        :image_url => "Image Url",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of store_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
