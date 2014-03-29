require 'spec_helper'

describe Objective do
  it { should have_and_belong_to_many(:users) }
  it { should belong_to(:week) }
  it { should belong_to(:resource) }
  it { should validate_presence_of(:name) }

end
