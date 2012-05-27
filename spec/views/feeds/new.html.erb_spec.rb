require 'spec_helper'

describe "feeds/new" do
  before(:each) do
    assign(:feed, stub_model(Feed,
      :text => "MyText",
      :user => ""
    ).as_new_record)
  end

  it "renders new feed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => feeds_path, :method => "post" do
      assert_select "textarea#feed_text", :name => "feed[text]"
      assert_select "input#feed_user", :name => "feed[user]"
    end
  end
end
