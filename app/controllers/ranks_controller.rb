class RanksController < ApplicationController

  def create
    objective_id = params[:rank][:objective_id]

    objective = Objective.find_by(id: objective_id)
    user = User.find_by(id: session[:user_id])
    value = params[:rank][:value]

    if user.rank_obj(objective)
      flash[:notice] = "This objective has been saved in your user profile"
    else
      flash[:notice] = "An error has occurred. Please try again."
    end

  end

  # private
  #   def rank_params
  #     params.require(:rank).permit(
  #       :objective,
  #       :user,
  #       :value)
  #   end

end
