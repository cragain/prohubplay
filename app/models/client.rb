class Client < ActiveRecord::Base
  default_scope { order('client_name ASC')}
  
  has_many :tasks
  attr_accessor :tasks
  
  def return_type
    if business_type == 'Sole Proprietor'
      return 'Schedule C'
    elsif business_type == 'Partnership'
      return 'Form 1065'
    else
      return 'Form 1120S'
    end
  end
  
  def new_client_tasks
    if business_type == 'Sole Proprietor'
      Task.create(:task_name => "Personal Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-04-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Annual', :project_size => 1)
    else
      Task.create(:task_name => "Personal Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-04-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Annual', :project_size => 1 )
      Task.create(:task_name => "Business Tax Return", :task_frequency => "Annual", :client_id => self.id, :task_due => '2017-03-15', :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Annual', :project_size => 1)
    end
    
    if bookkeeping_schedule == 'Weekly'
      Task.create(:task_name => "Weekly Bookkeeping", :task_frequency => "Books Weekly", :client_id => self.id, :task_due => Time.now, :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Every Week', :project_size => 1)
    elsif bookkeeping_schedule == 'Monthly'
      Task.create(:task_name => "Monthly Bookkeeping", :task_frequency => "Books Monthly", :client_id => self.id, :task_due => Time.now, :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Week 1', :project_size => 1)
    else
      Task.create(:task_name => "Quarterly Bookkeeping", :task_frequency => "Books Quarterly", :client_id => self.id, :task_due => Time.now, :task_status => 'Not Started', :task_assigned_to => 'No User', :staff_accountant => 'N/A', :reviewer => 'N/A', :schedule => 'Quarterly', :project_size => 1)
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
