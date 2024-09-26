import 'dart:io';

// Class to represent a task
class Task {
  final String taskName;
  bool isCompleted;
  Task({required this.taskName, this.isCompleted = false});
}

// Class to manage a todo list
class TodoList {
  final List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  // Function to add a task to the list
  void addTask(String taskName) {
    _tasks.add(Task(taskName: taskName));
  }

  // Function to view all tasks
  void viewTasks() {
    for (var i = 0; i < _tasks.length; i++) {
      print(
          '${i + 1}. ${_tasks[i].taskName} - ${_tasks[i].isCompleted ? 'Completed' : 'Not Completed'}');
    }
  }

  // Function to mark a task as completed
  void markTaskAsCompleted(int index) {
    if (index >= 1 && index <= _tasks.length) {
      _tasks[index - 1].isCompleted = true;
    } else {
      print('Invalid task index');
    }
  }

  // Function to remove a task from the list
  void removeTask(int index) {
    if (index >= 1 && index <= _tasks.length) {
      _tasks.removeAt(index - 1);
    } else {
      print('Invalid task index');
    }
  }
}

// Main function to run the program
void main() {
  TodoList todoList = TodoList();

  while (true) {
    print('Todo List Menu:');
    print('1. Add task');
    print('2. View tasks');
    print('3. Mark task as completed');
    print('4. Remove task');
    print('5. Exit');

    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync() ?? '';

    switch (choice) {
      case '1':
        stdout.write('Enter task name: ');
        String taskName = stdin.readLineSync() ?? '';
        todoList.addTask(taskName);
        break;
      case '2':
        todoList.viewTasks();
        break;
      case '3':
        stdout.write('Enter task index to mark as completed: ');
        int index = int.parse(stdin.readLineSync() ?? '');
        todoList.markTaskAsCompleted(index);
        break;
      case '4':
        stdout.write('Enter task index to remove: ');
        int removeIndex = int.parse(stdin.readLineSync() ?? '');
        todoList.removeTask(removeIndex);
        break;
      case '5':
        print('Exiting...');
        return;
      default:
        print('Invalid choice');
    }
  }
}
