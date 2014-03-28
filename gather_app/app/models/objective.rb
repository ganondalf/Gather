class Objective < ActiveRecord::Base
  has_many :users
  has_many :resources
  validates :name, presence: true, length: { maximum: 500}
  validates :week, length: { in: 1..13 }
end
