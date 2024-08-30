import 'dart:io';

void main() {
  print("Enter the first number:");
  String? input1 = stdin.readLineSync();
  int? num1 = int.tryParse(input1 ?? '');

  print("Enter the second number:");
  String? input2 = stdin.readLineSync();
  int? num2 = int.tryParse(input2 ?? '');

  print("Enter the third number:");
  String? input3 = stdin.readLineSync();
  int? num3 = int.tryParse(input3 ?? '');

  // Ensure all inputs are valid numbers
  if (num1 == null || num2 == null || num3 == null) {
    print("Invalid input. Please enter valid numbers.");
  } else {
    int largest;

    if (num1 >= num2 && num1 >= num3) {
      largest = num1;
    } else if (num2 >= num1 && num2 >= num3) {
      largest = num2;
    } else {
      largest = num3;
    }

    print("The largest number is: $largest");
  }
}
