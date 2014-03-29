class Objective < ActiveRecord::Base
  belongs_to :resource
  belongs_to :week
  has_and_belongs_to_many :users
  validates :name, presence: true, length: { maximum: 500}
  validates :week, length: { in: 1..13 }
end
