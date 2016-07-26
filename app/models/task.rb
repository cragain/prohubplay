class Task < ActiveRecord::Base
  belongs_to :client
  attr_accessor :client
  validates :client_id, :task_frequency, :task_name,  presence: true

  









end
