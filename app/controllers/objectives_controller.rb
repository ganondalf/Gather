class ObjectivesController < ApplicationController

  before_action(:require_admin, {:except => [:index, :show]})

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

  def show
    @objective = Objective.find(params[:id])
    @weeks = Week.all
  end

  def destroy
    objective = Objective.find(params[:id])
    objective.delete
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
