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

require 'spec_helper'

describe Note do
  pending "add some examples to (or delete) #{__FILE__}"
end
