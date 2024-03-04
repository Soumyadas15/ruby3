require_relative 'task'

class PriorityTask < Task
  attr_accessor :priority

  # Initializes a new PriorityTask with a title, description, and priority.
  # Inherits title and description from the Task superclass.
  # - Parameters:
  #   - title: A string representing the title of the priority task.
  #   - description: A string representing the description of the priority task.
  #   - priority: An integer representing the priority level of the task.
  def initialize(title, description, priority)
    super(title, description)
    @priority = priority
  end

  # Returns a string representation of the priority task.
  # Format: "<superclass_to_s_result> - Priority: <priority>"
  def to_s
    "#{super} - Priority: #{@priority}"
  end
end
