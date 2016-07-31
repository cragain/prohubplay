class TasksController < ApplicationController
  before_action :show, only: [:show, :edit, :update, :destroy]
  
  
  
  def index
    @task = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
    @rolled_task = Task.find(params[:id]).tap { |t| t.task_due = t.task_due_roll }
  end
  
  def new
    @task = Task.new
    @task.notes.build
  end
  
  def create
    @task = Task.new(task_params)
    
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end
  
  def schedule
    
  end
  
  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    end
  end
  
  def destroy
    @task.destroy
    redirect_to tasks_path
  end


  private
  
  def task_params
    params.require(:task).permit(:task_name, :task_frequency, :task_due, :client_name, :client_id, :schedule, :task_status, :task_assigned_to, :staff_accountant, :reviewer, :project_size)
  end
  
  

end



