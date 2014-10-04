require 'rails_helper'

RSpec.describe "becks/edit", :type => :view do
  before(:each) do
    @beck = assign(:beck, Beck.create!(
      :notes => "MyText",
      :value => 1,
      :user_id => 1
    ))
  end

  it "renders the edit beck form" do
    render

    assert_select "form[action=?][method=?]", beck_path(@beck), "post" do

      assert_select "textarea#beck_notes[name=?]", "beck[notes]"

      assert_select "input#beck_value[name=?]", "beck[value]"

      assert_select "input#beck_user_id[name=?]", "beck[user_id]"
    end
  end
end
