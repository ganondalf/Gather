require 'spec_helper'

describe Objective do
  it { should have_many(:ranks) }
  it { should have_many(:users).through(:ranks) }
  it { should belong_to(:week) }
  it { should belong_to(:resource) }
  it { should validate_presence_of(:name) }

end
