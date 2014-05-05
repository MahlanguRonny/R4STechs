require 'spec_helper'

describe "store_products/edit" do
  before(:each) do
    @store_product = assign(:store_product, stub_model(StoreProduct,
      :name => "MyString",
      :categoryid => 1,
      :quantity => 1,
      :supplierid => 1,
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit store_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", store_product_path(@store_product), "post" do
      assert_select "input#store_product_name[name=?]", "store_product[name]"
      assert_select "input#store_product_categoryid[name=?]", "store_product[categoryid]"
      assert_select "input#store_product_quantity[name=?]", "store_product[quantity]"
      assert_select "input#store_product_supplierid[name=?]", "store_product[supplierid]"
      assert_select "input#store_product_image_url[name=?]", "store_product[image_url]"
      assert_select "input#store_product_price[name=?]", "store_product[price]"
    end
  end
end
