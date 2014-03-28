class User < ActiveRecord::Base
  has_many :objectives
  has_many :songs, through: :purchases
  validates :name, :email, :github_url, presence: true
  validates :email, uniqueness: true, case_sensitive: false
  validates :password, length: { in: 3..20 }

has_secure_password

end
