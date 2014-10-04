require 'rails_helper'

RSpec.describe "pictures/show", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :url => "Url",
      :product_id => 1,
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
