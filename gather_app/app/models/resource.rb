class Resource < ActiveRecord::Base
  belongs_to :objective
  validates :url, presence: true
  validates :description, length: { maximum: 500}
end
