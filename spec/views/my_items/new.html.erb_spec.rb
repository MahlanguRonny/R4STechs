require 'spec_helper'

describe "my_items/new" do
  before(:each) do
    assign(:my_item, stub_model(MyItem,
      :component_id => 1,
      :caart_id => 1
    ).as_new_record)
  end

  it "renders new my_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", my_items_path, "post" do
      assert_select "input#my_item_component_id[name=?]", "my_item[component_id]"
      assert_select "input#my_item_caart_id[name=?]", "my_item[caart_id]"
    end
  end
end
