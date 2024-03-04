Here's how each OOP concept is applied in the provided code:
Classes:
    * The code defines several classes such as Task, TaskList, and PriorityTask.
Objects:
    * Instances of classes are created throughout the code, like taskList, task, and priorityTask.
Methods:
    * Methods are defined within the classes to perform specific actions or behaviors. Examples include initialize, markComplete, to_s, addTask, removeTask, listTasks, queryTask, addPriorityTask, and queryPriorityTask.
Method Overriding:
    * In the PriorityTask class, the to_s method is overridden to provide a custom string representation that includes priority.
Inheritance:
    * PriorityTask class inherits from the Task class, as seen with class PriorityTask < Task. This means that PriorityTask inherits all attributes and methods from Task and can also define its own.
Encapsulation:
    * Encapsulation is achieved by using instance variables and accessor methods (attr_accessor) to control access to the class attributes (title, description, status, priority). This prevents direct access to instance variables from outside the class and ensures data integrity by providing controlled access through methods.
Polymorphism:
    * Polymorphism is demonstrated when calling the to_s method on different objects (Task and PriorityTask). Even though both objects have a to_s method, they produce different outputs based on their respective implementations. Also, the queryPriorityTask method in TaskList checks if the found task is a PriorityTask, demonstrating polymorphism in action.