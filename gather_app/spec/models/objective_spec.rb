require 'spec_helper'

describe Objective do
  it { should have_and_belong_to_many(:users) }
  it { should have_many(:resources) }
  it { should validate_presence_of(:name) }
  it { should ensure_length_of(:week).is_at_least(1).is_at_most(13) }
end
