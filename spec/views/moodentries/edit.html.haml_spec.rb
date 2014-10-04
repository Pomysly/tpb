require 'rails_helper'

RSpec.describe "moodentries/edit", :type => :view do
  before(:each) do
    @moodentry = assign(:moodentry, Moodentry.create!(
      :note => "MyText",
      :mood => 1
    ))
  end

  it "renders the edit moodentry form" do
    render

    assert_select "form[action=?][method=?]", moodentry_path(@moodentry), "post" do

      assert_select "textarea#moodentry_note[name=?]", "moodentry[note]"

      assert_select "input#moodentry_mood[name=?]", "moodentry[mood]"
    end
  end
end
