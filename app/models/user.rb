# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  password   :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many addresses
  validates :name, presence: true,length: { minimum: 5 }
  validates :password, presence: true,length: { minimum: 6 }
  validates :address, presence: true

end
