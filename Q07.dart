import 'dart:io';

void main() {
  print("Enter a number to check :");


  String? input = stdin.readLineSync();

  
  int? number = int.tryParse(input ?? '');

  if (number == null) {
    print("Invalid input. Please enter a valid number.");
  } else {
 
    if (number % 3 == 0 || number % 7 == 0) {
      print("$number is multiple by 3 and 7");
    } else {
      print("$number is not multiple by 3 and 7");
    }
  }
}
