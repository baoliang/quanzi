require 'spec_helper'

describe "feeds/index" do
  before(:each) do
    assign(:feeds, [
      stub_model(Feed,
        :text => "MyText",
        :user => ""
      ),
      stub_model(Feed,
        :text => "MyText",
        :user => ""
      )
    ])
  end

  it "renders a list of feeds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
