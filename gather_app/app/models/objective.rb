class Objective < ActiveRecord::Base
  has_many :resources
  has_and_belongs_to_many :users
  validates :name, presence: true, length: { maximum: 500}
  validates :week, length: { in: 1..13 }
end
