class User < ActiveRecord::Base
  has_and_belongs_to_many :objectives


  validates :name, :email, :github_url, presence: true
  validates :email, uniqueness: true, case_sensitive: false
  validates :password, length: { in: 3..20 }

has_secure_password

end
