# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  address    :string(255)
#  age        :integer
#  body       :text(65535)
#  email      :string(255)
#  furigana   :string(255)
#  name       :string(255)
#  tel        :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
