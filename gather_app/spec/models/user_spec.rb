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
