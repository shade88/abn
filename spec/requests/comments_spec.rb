require 'spec_helper'

describe "Comments" do
  before :all do
    @user=FactoryGirl.create(:user)
    @book=@user.books.create(title: '123', description: 'fsdf sdfdsfs')
    visit book_path(@book)
  end
  describe "Добавить комментарий" do
    before :all do
      fill_in('comment_text', :with => 'my comment')
      click_button 'Add comment'
    end
    it "он сохраняется в БД" do
      puts Comment.find(1).text
      expect(Comment.find 1).to be
    end
    it "он добавляется к комментариям книги" do
      expect(@book.comments.find 1).to be
    end
    it 'он появляется на странице книги' do
      visit book_path(@book)
      expect(page).to have_content 'my comment'
    end
    it 'он добавляется к комментарием пользователя в его профиле' do
      pending 'сделать когда будет профиль пользователя'
    end
  end
end
