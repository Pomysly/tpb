require 'rails_helper'

RSpec.describe "moodentries/index", :type => :view do
  before(:each) do
    assign(:moodentries, [
      Moodentry.create!(
        :note => "MyText",
        :mood => 1
      ),
      Moodentry.create!(
        :note => "MyText",
        :mood => 1
      )
    ])
  end

  it "renders a list of moodentries" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
