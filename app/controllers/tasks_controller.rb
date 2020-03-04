class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.order('id DESC')
  end

  def new
    
  end

  def create
    @task = Task.create(task_params)
    redirect_to root_path
  end

  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end
  
  def change_status
    @task = Task.find(params[:id])
    if @task.status == "start"
      @task.update_attribute(:status, "doing")
    elsif @task.status == "doing"
      @task.update_attribute(:status, "done")
    end
    redirect_to root_path
  end

    private
    def task_params
      params.require(:task).permit(:content, :status)
    end
  end

