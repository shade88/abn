# == Schema Information
#
# Table name: books
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  description        :text
#  user_id            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'spec_helper'

describe Book do
  pending "add some examples to (or delete) #{__FILE__}"
end
