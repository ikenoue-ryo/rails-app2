# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  body       :text(65535)
#  furigana   :string(255)
#  name       :string(255)
#  string     :string(255)
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
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
