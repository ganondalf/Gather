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

require 'spec_helper'

describe User do
  it { should have_many(:ranks)}
  it { should have_many(:objectives).through(:ranks) }

  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:email)}
  it { should validate_presence_of(:github_url)}
  it { should validate_presence_of(:password)}
  it { should have_secure_password }
  it { should ensure_length_of(:password).is_at_least(3).is_at_most(20) }
end
