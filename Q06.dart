import 'dart:io';

void main() {
  print("Enter a number to check :");


  String? input = stdin.readLineSync();

  
  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
 
    if (number % 5 == 0 && number % 11 ==0) {
      print("$number is divisible by 5 and 11");
    } else {
      print("$number is not divisible by 5 and 11");
    }
  }
}
