require 'rails_helper'

RSpec.describe "moodentries/show", :type => :view do
  before(:each) do
    @moodentry = assign(:moodentry, Moodentry.create!(
      :note => "MyText",
      :mood => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
