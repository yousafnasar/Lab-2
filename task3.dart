import 'dart:io';

void main() {
  // Ask the user for their age
  stdout.write('Please enter your age: ');
  String? input = stdin.readLineSync();
  if (input != null) {
    try {
      int age = int.parse(input);
      if (age >= 0) {
        int yearsLeft = 100 - age;

        // Print a message to the user
        print('You have $yearsLeft years left until you turn 100!');
      } else {
        // Print an error message if the age is negative
        print('Invalid age! Please enter a positive number.');
      }
    } catch (e) {
      // Catch any exceptions that occur during parsing
      print('Error: Invalid input. Please enter a valid age.');
    }
  } else {
    // Print an error message if the user didn't enter anything
    print('Error: No input provided. Please try again!');
  }
}
