require_relative 'task'
require_relative 'priorityTask'

class TaskList
  def initialize
    @tasks = []
  end

  # Adds a new task to the TaskList.
  # - Parameters:
  #   - title: A string representing the title of the task.
  #   - description: An optional string representing the description of the task (default is nil).
  def addTask(title, description = nil)
    task = description.nil? ? Task.new(title) : Task.new(title, description)
    @tasks << task
  end

  # Removes tasks from the TaskList based on their titles.
  # - Parameters:
  #   - title: A string representing the title of the task to be removed.
  def removeTasks(title)
    @tasks.reject! { |task| task.title == title }
  end

  # Lists all tasks currently stored in the TaskList.
  def listTasks
    puts "Tasks:\n"
    @tasks.each { |task| puts task }
  end

  # Searches for a task in the TaskList based on its title.
  # - Parameters:
  #   - title: A string representing the title of the task to be searched.
  # - Returns:
  #   - The task object if found, nil otherwise.
  def queryTask(title)
    @tasks.find { |task| task.title == title }
  end

  # Adds a new priority task to the TaskList.
  # - Parameters:
  #   - title: A string representing the title of the priority task.
  #   - description: A string representing the description of the priority task.
  #   - priority: An integer representing the priority level of the task.
  def addPriorityTask(title, description, priority)
    @tasks << PriorityTask.new(title, description, priority)
  end

  # Searches for a priority task in the TaskList based on its title.
  # - Parameters:
  #   - title: A string representing the title of the priority task to be searched.
  # - Returns:
  #   - The priority task object if found, nil otherwise.
  def queryPriorityTask(title)
    @tasks.find { |task| task.is_a?(PriorityTask) && task.title == title }
  end
end
