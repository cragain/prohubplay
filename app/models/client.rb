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
  
  
  
  
end
