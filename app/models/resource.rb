# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Resource < ActiveRecord::Base

  has_many :objectives
  has_many :weeks, through: :objectives

  validates :url, presence: true
  validates :description, length: { maximum: 500}
end
