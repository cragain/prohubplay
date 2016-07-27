class Note < ActiveRecord::Base
  belongs_to :task
  attr_accessor :task
  
  
 
  
end
