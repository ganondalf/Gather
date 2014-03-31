# == Schema Information
#
# Table name: ranks
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  objective_id :integer
#  value        :integer          default(0)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Rank do
  it { should belong_to(:user) }
  it { should belong_to(:objective) }
end
