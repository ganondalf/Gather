class Objective < ActiveRecord::Base
  belongs_to :resource
  belongs_to :week
  has_many :ranks
  has_many :users, through: :ranks
  validates :name, presence: true, length: { maximum: 500}

end
