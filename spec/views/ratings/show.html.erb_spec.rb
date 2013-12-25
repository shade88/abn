require 'spec_helper'

describe "ratings/show" do
  before(:each) do
    @rating = assign(:rating, stub_model(Rating,
      :user_id => 1,
      :book_id => 2,
      :score => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
