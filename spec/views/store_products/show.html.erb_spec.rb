require 'spec_helper'

describe "store_products/show" do
  before(:each) do
    @store_product = assign(:store_product, stub_model(StoreProduct,
      :name => "Name",
      :categoryid => 1,
      :quantity => 2,
      :supplierid => 3,
      :image_url => "Image Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Image Url/)
    rendered.should match(/9.99/)
  end
end
