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
class Plan < ApplicationRecord
  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 1000 }
  validates :start_time, presence: true
end
