class ProjectsController < ApplicationController
  before_action :set_project, only [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save

    if @project.save
      redirect_to project_index_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    @project.save

    if @project.save
      redirect_to project_index_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    #insérer une alerte (votre projet à bien été supprimer)
    redirect_to project_index_path
  end

  private
  def project_params
    params.require(:project).permit(:name,
                                    :description,
                                    :tag,
                                    :total_cost,
                                    :total_time,
                                    :sold_price,
                                    :sold_hours,
                                    :start_date,
                                    :end_date
                                    )
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
