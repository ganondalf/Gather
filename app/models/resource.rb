class Resource < ActiveRecord::Base

  has_many :objectives
  has_many :weeks, through: :objectives

  validates :url, presence: true
  validates :description, length: { maximum: 500}
end
