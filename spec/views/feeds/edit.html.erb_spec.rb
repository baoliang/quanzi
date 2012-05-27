require 'spec_helper'

describe "feeds/edit" do
  before(:each) do
    @feed = assign(:feed, stub_model(Feed,
      :text => "MyText",
      :user => ""
    ))
  end

  it "renders the edit feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => feeds_path(@feed), :method => "post" do
      assert_select "textarea#feed_text", :name => "feed[text]"
      assert_select "input#feed_user", :name => "feed[user]"
    end
  end
end
