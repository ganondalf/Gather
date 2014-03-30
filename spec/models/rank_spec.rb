require 'spec_helper'

describe Rank do
  it { should belong_to(:user) }
  it { should belong_to(:objective) }
end
