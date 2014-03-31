# == Schema Information
#
# Table name: weeks
#
#  id         :integer          not null, primary key
#  name       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Week < ActiveRecord::Base
  has_many :objectives
  has_many :resources, through: :objectives
  validates :name, presence: true
end
