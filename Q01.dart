import 'dart:io';

void main() {
  print("Enter a number to check:");
  String? input = stdin.readLineSync();

  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
    if (number < 0) {
      print("The number is negative: $number");
    } else if (number > 0) {
      print("The number is positive: $number");
    } else {
      print("The number is zero.");
    }
  }
}
