# == Schema Information
#
# Table name: weeks
#
#  id         :integer          not null, primary key
#  name       :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Week do
  it { should have_many(:objectives) }
  it { should have_many(:resources).through(:objectives) }
end
