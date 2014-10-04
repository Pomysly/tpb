require 'rails_helper'

RSpec.describe "moodentries/new", :type => :view do
  before(:each) do
    assign(:moodentry, Moodentry.new(
      :note => "MyText",
      :mood => 1
    ))
  end

  it "renders new moodentry form" do
    render

    assert_select "form[action=?][method=?]", moodentries_path, "post" do

      assert_select "textarea#moodentry_note[name=?]", "moodentry[note]"

      assert_select "input#moodentry_mood[name=?]", "moodentry[mood]"
    end
  end
end
