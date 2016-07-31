class Task < ActiveRecord::Base
  default_scope { order('task_due ASC')}
  
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
  
  
  def task_week_select
   
    if @task.schedule == 11 || schedule == 12 || schedule == 13 || schedule == 14 || schedule == 15
      return 'Week 1'
    else
      return 'Week 2'
    end
  end
  
  def task_due_roll
    if task_frequency == 'Books Weekly' 
      if Date.today.strftime("%A") == "Monday" || Date.today.strftime("%A") == "Tuesday"
        Date.today + 2.days
      else
        Date.today + 3.days
      end
    elsif task_frequency == 'Books Monthly' 
      Date.today + 7.days
    elsif task_frequency == 'Books Quarterly' 
      Date.today + 14.days
    elsif task_frequency == 'Payroll Bi-Weekly' 
      task_due + 14.days
    elsif task_frequency == 'Payroll Monthly' 
      task_due + 1.month 
    elsif task_frequency == 'Annual'
      if task_name == "Business Tax Return"
        "2017-01-15"
      else
        "2017-02-15"
      end
    else 
    end
  end 
  
  
  
 








end
