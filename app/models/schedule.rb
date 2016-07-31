# Deriving schedule from tasks
#
# Collaboration: Task
class Schedule
  def initialize(tasks_scope)
    @tasks_scope = tasks_scope
  end
  
  def weeks_tasks
    @tasks_scope.all
    
  end
  def week
    (1..4).each do |week|
    return week
    end
  end
  
  

end