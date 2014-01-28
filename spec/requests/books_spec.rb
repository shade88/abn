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


  describe 'create new book' do
    before :all do
      @user = FactoryGirl.create(:user)
    end
    describe 'success' do
      before :all do
        visit new_book_path
        fill_in('Title', :with => 'John')
        fill_in('book_description', :with => 'John dfdsfds')
        click_button 'Create Book'
      end
      #expect(Book.find(1).title).to eq 'John'
      it 'book should be added to DB' do
        expect(Book.find(1)).to be
      end
      it 'на странице книги есть ее название' do
        visit book_path(1)
        expect(page).to have_content 'John'
      end
      it 'книга появляется в списке книг' do
        visit books_path
        expect(page).to have_content 'John'
      end
      it 'книга появляется у пользователя в профайле' do
        pending 'сделать тест, когда будет готов профайл пользователя'
      end
    end

    describe 'failed' do
      it 'пользователю показывается ошибка' do
        visit new_book_path
        fill_in('Title', :with => '')
        fill_in('book_description', :with => '')
        click_button 'Create Book'
        expect(page).to have_content 'Введите название книги'
      end
    end
  end
end
