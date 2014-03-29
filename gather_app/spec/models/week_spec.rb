require 'spec_helper'

describe Week do
  it { should have_many(:objectives) }
  it { should have_many(:resources).through(:objectives) }
end
