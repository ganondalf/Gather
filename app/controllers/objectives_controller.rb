class ObjectivesController < ApplicationController

  def index
    @objectives = Objective.all
  end

  def new
    @objective = Objective.new
    @weeks = Week.all
  end

  def create
    @objective = Objective.new(objective_params)

    if @objective.save
      flash[:notice] = "Learning objective has been added"
      redirect_to("/objectives")
    else
      render(:new)
    end
  end

  def delete
    @objective.find_by(id: params[:id])

    @objective.destroy

    redirect_to("/objectives")
  end

  private
    def objective_params
      params.require(:objective).permit(
        :name,
        :description,
        :week_id
        )
    end



end
