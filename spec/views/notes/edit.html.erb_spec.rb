require 'spec_helper'

describe "notes/edit" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :book_id => 1,
      :user_id => 1,
      :text => "MyText"
    ))
  end

  it "renders the edit note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", note_path(@note), "post" do
      assert_select "input#note_book_id[name=?]", "note[book_id]"
      assert_select "input#note_user_id[name=?]", "note[user_id]"
      assert_select "textarea#note_text[name=?]", "note[text]"
    end
  end
end
