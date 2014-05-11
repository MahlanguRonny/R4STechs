require 'spec_helper'

describe "components/show" do
  before(:each) do
    @component = assign(:component, stub_model(Component,
      :name => "Name",
      :description => "MyText",
      :image_url => "Image Url",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/9.99/)
  end
end
