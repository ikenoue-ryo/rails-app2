# == Schema Information
#
# Table name: infos
#
#  id          :bigint           not null, primary key
#  body        :text(65535)
#  name        :string(255)
#  title       :string(255)
#  youtube_url :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Info < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :youtube_url, presence: true, length: { maximum: 100 }
end
