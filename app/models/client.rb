class Client < ActiveRecord::Base
  has_many :tasks
  attr_accessor :tasks
  
  def return_type
    if business_type == 'Sole Proprietor'
      return 'Sole Proprietor | Schedule C'
    elsif business_type == 'Partnership'
      return 'Partnership | Form 1065'
    else
      return 'S-corporation | Form 1120S'
    end
  end
  
  def new_client_tasks
    if business_type == 'Sole Proprietor'
      Task.create(:task_name => "Personal Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-04-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A')
    else
      Task.create(:task_name => "Personal Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-04-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A')
      Task.create(:task_name => "Business Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-03-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A')
    end
  end
  
  def display_business_tax_status
    if business_type == 'Sole Proprietor'
      return "Included in Personal Return"
    else
      c = Task.where("client_id = ? AND task_name = ?", self.id, "Business Tax Return").first_or_initialize
      c.task_status
    end       
  end            
  def display_personal_tax_status
    c = Task.where("client_id = ? AND task_name = ?", self.id, "Personal Tax Return").first_or_initialize
    c.task_status
  end                 
            
  
  
end
