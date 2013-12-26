require 'spec_helper'

describe "Books" do
  describe 'Books rating' do
    it 'set books rating' do
      @user = FactoryGirl.create(:user)
      @book=FactoryGirl.create(:book, creator: @user)
      #@book=Book.create(user_id: @user.id, title: 'ddfgffd', description: 'fgfghfg gfhgf gfhfg')
      visit book_path(@book)
      #visit "/books/1"
      #visit root_path
      #within(find_by_id 'new_rating') do
      choose('rating_score_3')
      click_button 'set rating'
      #end
      expect(@book.ratings.first.score).to eq 3
    end

    it 'change books rating' do
      pending 'do it later'
    end

    it 'average books rating' do
      @user1 = FactoryGirl.create(:user)
      @user2 = FactoryGirl.create(:user)
      @user3 = FactoryGirl.create(:user)
      @book=FactoryGirl.create(:book, creator: @user1)
      @book.ratings.create(user_id: @user1.id, score: 4)
      @book.ratings.create(user_id: @user2.id, score: 2)
      @book.ratings.create(user_id: @user3.id, score: 3)

      expect(@book.ratings.average('score')).to eq 3
    end
  end


  it 'create new book' do
    @user = FactoryGirl.create(:user)
    visit new_book_path
    fill_in('Title', :with => 'John')
    fill_in('book_description', :with => 'John dfdsfds')
    click_button 'Create Book'
    expect(Book.find(1).title).to eq 'John'
  end

end
