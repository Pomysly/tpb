require 'rails_helper'

RSpec.describe "becks/show", :type => :view do
  before(:each) do
    @beck = assign(:beck, Beck.create!(
      :notes => "MyText",
      :value => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
