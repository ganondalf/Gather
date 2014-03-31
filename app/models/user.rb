# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  github_url      :string(255)
#  personal_url    :string(255)
#  admin           :boolean          default(FALSE)
#  picture_url     :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :ranks
  has_many :objectives, through: :ranks

  validates :name, :email, :github_url, presence: true
  validates :email, uniqueness: true, case_sensitive: false
  validates :password, length: { in: 3..20 }

  has_secure_password

  def rank_objective(selection)

    rank = Rank.new(
      user_id: self,
      objective_id: objective_id,
      value: selection
      )

    return self.save && rank.save
  end

  def is_admin?
    self.admin
  end

end
