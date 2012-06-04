# == Schema Information
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Micropost < ActiveRecord::Base
belongs_to :user, foreign_key: "user_id"

  attr_accessible :text, :user

  validates :text, presence: true, length: { maximum: 140}

end
