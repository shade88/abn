# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  book_id    :integer
#  user_id    :integer
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Note < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
end
