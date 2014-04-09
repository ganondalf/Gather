class RanksController < ApplicationController

  def new
    @rank = Rank.new
  end

  def create

    @rank.user = current_user
    @rank.objective = objective
    @rank.value = params[:rank][:value]

    if @rank.save
      flash[:notice] = "This objective has been saved in your user profile"
    else
      flash[:notice] = "An error has occurred. Please try again."
    end

    redirect_to('/objectives')

  end

  def update

    @rank = Rank.find(params[:id])
    @rank.value = params[:rank][:value]

    @rank.save
    redirect_to("/users/#{current_user.id}")

  end


end
