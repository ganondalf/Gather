class RanksController < ApplicationController

  def index
    @ranks = Rank.all
  end

  def create

    objective_id = params[:rank][:objective_id]
    objective = Objective.find_by(id: objective_id)

    exist_rank = Rank.find_by(objective_id: objective_id, user_id: current_user.id)

    if exist_rank
      exist_rank.delete.save
    end

    value = params[:rank][:value]

    rank = Rank.new
    rank.user = current_user
    rank.objective = objective
    rank.value = value

    if rank.save
      flash[:notice] = "This objective has been saved in your user profile"
    else
      flash[:notice] = "An error has occurred. Please try again."
    end

    redirect_to('/objectives')

  end

end
