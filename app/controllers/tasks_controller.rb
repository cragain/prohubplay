class TasksController < ApplicationController
  before_action :show, only: [:show, :edit, :update, :destroy]
  
  def index
    @task = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end


  private
  
  def task_params
    params.require(:task).permit(:task_name, :task_frequency, :task_due)
  end


end



