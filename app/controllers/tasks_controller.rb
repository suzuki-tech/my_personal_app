class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.order('created_at ASC')
    @status = ["start", "doing", "done"]
  end

  def new
    
  end

  def create
    @task = Task.create(task_params)
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

    private
    def task_params
      params.require(:task).permit(:content, :status)
    end
  end

