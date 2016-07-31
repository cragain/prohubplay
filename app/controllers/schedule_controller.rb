class ScheduleController < ApplicationController
  
  
  
  def index
    @schedule = Schedule.new(Task)
  end
  
  def show
  end



end
