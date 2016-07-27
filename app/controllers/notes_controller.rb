class NotesController < ApplicationController
  before_action :show, only: [:show, :edit, :update, :destroy]
  
  def index
    @note = Note.all
  end
  
  def new
    @note = Note.new
    
  end

  def create
    @note = Note.new(note_params)
    
    if @note.save
      redirect_to notes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    if @note.update(note_params)
      redirect_to note_path(@note)
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end



  private
  
  def note_params
    params.require(:note).permit(:note_date, :note_owner, :note_contents, :task_id)
  end


end
