require 'spec_helper'

describe "components/new" do
  before(:each) do
    assign(:component, stub_model(Component,
      :name => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", components_path, "post" do
      assert_select "input#component_name[name=?]", "component[name]"
      assert_select "textarea#component_description[name=?]", "component[description]"
      assert_select "input#component_image_url[name=?]", "component[image_url]"
      assert_select "input#component_price[name=?]", "component[price]"
    end
  end
end
