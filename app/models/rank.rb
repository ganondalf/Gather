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

class Rank < ActiveRecord::Base
  belongs_to :user
  belongs_to :objective

  # def dupe?(rank)
  #   if rank.objective_id && rank.user_id
  #     old_rank = Rank.find_by()
  #   else

  #   end


end
