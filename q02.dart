import 'dart:io';

void main() {
  print("Enter a number to check:");

String? input = stdin.readLineSync();

  // Convert the string to an integer
  int? number = int.tryParse(input ?? '');
if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
    // Check if the number is even or odd
    if (number % 2 == 0) {
      print("The number is Even");
    } else {
      print("The number is Odd");
    }
  }
}

