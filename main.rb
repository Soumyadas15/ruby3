require_relative 'taskList'

taskList = TaskList.new

# Adding tasks to the task list
taskList.addTask("Do homework")
taskList.addTask("Go to the gym", "Cardio workout")
taskList.addPriorityTask("Buy groceries", "Milk and eggs", "high")

puts "Before marking 'Go to the gym' as complete:"
taskList.listTasks

# Marking a task as complete
taskList.queryTask("Go to the gym").markComplete

puts "\nAfter marking 'Go to the gym' as complete:"
taskList.listTasks

puts "\nFinding tasks:"
puts taskList.queryTask("Do homework") # Finding a regular task
puts taskList.queryPriorityTask("Buy groceries") # Finding a priority task