import 'dart:io';

void main() {
  print("Enter a year to check if it's a century year:");

  // Read the input as a string
  String? input = stdin.readLineSync();

  int? year = int.tryParse(input ?? '');

  if (year == null) {
    print("Invalid input. Please enter a valid year.");
  } else {
 if (year % 100 == 0) {
      print("$year is a century year.");
    } else {
      print("$year is not a century year.");
    }
  }
}
