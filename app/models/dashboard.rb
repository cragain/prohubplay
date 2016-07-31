

class Dashboard
  def initialize(tasks_gut)
    @tasks_gut = tasks_gut
  end
  
  
  def dash_tasks
    @tasks_gut.all
  end
  
  
end
