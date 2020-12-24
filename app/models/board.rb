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
#  start_time :datetime
#  tel        :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Board < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  has_many :board_tag_relations, dependent: :delete_all
  has_many :tags, through: :board_tag_relations

  validates :name, presence: true, length: { maximum: 10 }
  validates :furigana, presence: true, length: { maximum: 20 }
  validates :age, length: { maximum: 3 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :address, length: { maximum: 100 }
  validates :tel, length: { maximum: 15 }
  validates :email, length: { maximum: 30 }
  validates :start_time, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
