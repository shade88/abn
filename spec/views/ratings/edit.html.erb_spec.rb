require 'spec_helper'

describe "ratings/edit" do
  before(:each) do
    @rating = assign(:rating, stub_model(Rating,
      :user_id => 1,
      :book_id => 1,
      :score => 1
    ))
  end

  it "renders the edit rating form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do
      assert_select "input#rating_user_id[name=?]", "rating[user_id]"
      assert_select "input#rating_book_id[name=?]", "rating[book_id]"
      assert_select "input#rating_score[name=?]", "rating[score]"
    end
  end
end
