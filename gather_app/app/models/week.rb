class Week < ActiveRecord::Base
  has_many :objectives
  has_many :resources, through: :objectives

end
