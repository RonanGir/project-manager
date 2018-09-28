class TasksController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.project = Project.find(params[:project_id])
    @task.save

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:project_id])
  end

  def update
    @task.update(task_params)
    @task.project = Project.find(params[:project_id])
    @task.save

    if @task.save
      redirect_to tasks_path
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    #insérer une alerte (votre projet à bien été supprimer)
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:name,
                                 :description,
                                 :state,
                                 :priority,
                                 :tag,
                                 :due_date,
                                 :user_id,
                                  )
  end

  def set_task
   @task = Task.find(params[:id])
  end
end
