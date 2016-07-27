class Task < ActiveRecord::Base
  belongs_to :client
  has_many :notes
  attr_accessor :client
  attr_accessor :note
  validates :client_id, :task_frequency, :task_name,  presence: true

  
  def note_association
    return Note.where(task_id: self.id).all
  end
  
 








end
