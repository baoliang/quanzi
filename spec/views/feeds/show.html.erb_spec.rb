require 'spec_helper'

describe "feeds/show" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :text => "MyText",
      :user => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
