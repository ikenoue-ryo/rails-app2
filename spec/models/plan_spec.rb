# == Schema Information
#
# Table name: plans
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  start_time :datetime
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Plan, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
