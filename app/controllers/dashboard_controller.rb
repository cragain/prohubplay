class DashboardController < ApplicationController
  
  
  def index
    @dashboard = Dashboard.new(Task)
  end
  
  
  
end
