require 'spec_helper'

describe "components/edit" do
  before(:each) do
    @component = assign(:component, stub_model(Component,
      :name => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", component_path(@component), "post" do
      assert_select "input#component_name[name=?]", "component[name]"
      assert_select "textarea#component_description[name=?]", "component[description]"
      assert_select "input#component_image_url[name=?]", "component[image_url]"
      assert_select "input#component_price[name=?]", "component[price]"
    end
  end
end
