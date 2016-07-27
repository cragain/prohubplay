class Task < ActiveRecord::Base
  belongs_to :client
  has_many :notes, dependent: :destroy
  attr_accessor :client
  attr_accessor :note
  validates :client_id, :task_frequency, :task_name,  presence: true

  
  def note_association
    return Note.where(task_id: self.id).all
  end
  
  def task_calendar_target
    if task_frequency == "Annual" or task_frequency == "Quarterly"
      return "Month Target"
    elsif task_frequency == "Monthly" 
      return "Week Target"
    else
      return "Day Target"
    end
  end
  
 








end
