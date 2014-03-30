class ObjectivesController < ApplicationController

  def index
    @objectives = Objective.all
  end

  def new
    @objective = Objective.new
  end

  def create
    week_id = Week.find_by(id: params[:objective][:week])
    @objective = Objective.new(objective_params)

    if @objective.save
      flash[:notice] = "Learning objective has been added"
      redirect_to("/objectives")
    else
      render(:new)
    end
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
