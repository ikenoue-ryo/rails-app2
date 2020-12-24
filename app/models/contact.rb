# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
end
