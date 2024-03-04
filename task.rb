class Task
  attr_accessor :title, :description, :status

  # Initializes a new Task with a title, description (default is an empty string), and status set to "incomplete".
  # - Parameters:
  #   - title: A string representing the title of the task.
  #   - description: An optional string representing the description of the task (default is an empty string).
  def initialize(title, description = "")
    @title = title
    @description = description
    @status = "incomplete"
  end

  # Marks the task as complete by setting the status attribute to "complete".
  def markComplete
    @status = "complete"
  end

  # Returns a string representation of the task.
  # Format: "Task: <title> - Status: <status>"
  def to_s
    "Task: #{@title} - Status: #{@status}"
  end
end
