# == Schema Information
#
# Table name: objectives
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  week_id     :integer
#  resource_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'


describe Objective do
  it { should have_many(:ranks) }
  it { should have_many(:users).through(:ranks) }
  it { should belong_to(:week) }
  it { should belong_to(:resource) }
  it { should validate_presence_of(:description) }

end
