class RanksController < ApplicationController

  def create

    objective_id = params[:rank][:objective_id]
    objective = Objective.find_by(id: objective_id)

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

  def edit
    @rank = Rank.find_by(id: params[:id])
  end

  def update
    @rank = Rank.find_by(id: params[:id])

    objective_id = @rank.objective
    objective = Objective.find_by(id: objective_id)

    @rank.value = params[:rank][:value]
    @rank.objective = objective
    @rank.user = current_user

      if @rank.save
        redirect_to("/users/#{current_user.id}")
      else
        render(:edit)
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
