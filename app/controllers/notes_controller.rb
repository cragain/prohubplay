class NotesController < ApplicationController
  before_filter :load_task
  
  
  before_action :show, only: [:show, :edit, :update, :destroy]
  
  def index
    @notes = @task.notes.order(params[:sort])
    
  end
  
  def new
   @note = @task.notes.new
    
  end

  def create
    
    @note = @task.notes.build(note_params)
    
    if @note.save
      redirect_to [@task]
    else
      render 'new'
    end
    
    
  end

  def edit
  end

  def show
    @note = @task.notes.find(params[:id])
  end

  def update
    if @note.update(note_params)
      redirect_to [@task]
    end
  end

  def destroy
    @note.destroy
    redirect_to [@task]
  end



  private
  
  def note_params
    params.require(:note).permit(:note_date, :note_owner, :note_contents, :task_id)
  end
  
  def load_task
    @task = Task.find(params[:task_id])
  end


end
