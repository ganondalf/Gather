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

  it "should delete an existing rank if a user wants to rerank a learning objective" do
    rank1 = Rank.new(value: 2, user_id: 17, objective_id: 10)
    rank2 = Rank.new(value: 5, user_id: 17, objective_id: 10)
      expect(rank1).to be nil
  end
end
