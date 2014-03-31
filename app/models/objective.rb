# == Schema Information
#
# Table name: objectives
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  week_id     :integer
#  resource_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Objective < ActiveRecord::Base
  belongs_to :resource
  belongs_to :week
  has_many :ranks
  has_many :users, through: :ranks
  validates :description, presence: true, length: { maximum: 500}

end
