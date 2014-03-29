require 'spec_helper'

describe Resource do
  it { should belong_to(:objective) }
  it { should validate_presence_of(:url) }
  it { should ensure_length_of(:description).is_at_most(500) }
end
