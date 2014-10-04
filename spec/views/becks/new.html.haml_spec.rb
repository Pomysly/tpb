require 'rails_helper'

RSpec.describe "becks/new", :type => :view do
  before(:each) do
    assign(:beck, Beck.new(
      :notes => "MyText",
      :value => 1,
      :user_id => 1
    ))
  end

  it "renders new beck form" do
    render

    assert_select "form[action=?][method=?]", becks_path, "post" do

      assert_select "textarea#beck_notes[name=?]", "beck[notes]"

      assert_select "input#beck_value[name=?]", "beck[value]"

      assert_select "input#beck_user_id[name=?]", "beck[user_id]"
    end
  end
end
