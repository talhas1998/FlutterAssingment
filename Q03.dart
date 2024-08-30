import 'dart:io';

void main() {
  print("Enter a year to check if it's a leap year:");

  String? input = stdin.readLineSync();

  int? year = int.tryParse(input ?? '');

  if (year == null) {
    print("Invalid input. Please enter a valid year.");
  } else {
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
      print("$year is a leap year.");
    } else {
      print("$year is not a leap year.");
    }
  }
}
