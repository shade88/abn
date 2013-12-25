require 'spec_helper'

describe "ratings/new" do
  before(:each) do
    assign(:rating, stub_model(Rating,
      :user_id => 1,
      :book_id => 1,
      :score => 1
    ).as_new_record)
  end

  it "renders new rating form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ratings_path, "post" do
      assert_select "input#rating_user_id[name=?]", "rating[user_id]"
      assert_select "input#rating_book_id[name=?]", "rating[book_id]"
      assert_select "input#rating_score[name=?]", "rating[score]"
    end
  end
end
