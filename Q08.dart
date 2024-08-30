import 'dart:io';

void main() {
  print("==================================");
  print("        Marksheet Generator");
  print("==================================");

  print("\nPlease enter the marks for each subject (out of 100):");

  print("Subject 1:");
  int? subject1 = int.tryParse(stdin.readLineSync() ?? '');

  print("Subject 2:");
  int? subject2 = int.tryParse(stdin.readLineSync() ?? '');

  print("Subject 3:");
  int? subject3 = int.tryParse(stdin.readLineSync() ?? '');

  print("Subject 4:");
  int? subject4 = int.tryParse(stdin.readLineSync() ?? '');

  if (subject1 == null || subject2 == null || subject3 == null || subject4 == null) {
    print("\nError: Invalid input. Please enter valid integers for all subjects.");
  } else if ([subject1, subject2, subject3, subject4].any((mark) => mark < 0 || mark > 100)) {
    print("\nError: Marks should be between 0 and 100.");
  } else {

    int totalMarks = subject1 + subject2 + subject3 + subject4;
    double percentage = (totalMarks / 400) * 100;

    print("\nMarksheet");
    print("==================================");
    print("Subject       | Marks");
    print("------------------------------");
    print("Subject 1     | " + subject1.toString().padLeft(4));
    print("Subject 2     | " + subject2.toString().padLeft(4));
    print("Subject 3     | " + subject3.toString().padLeft(4));
    print("Subject 4     | " + subject4.toString().padLeft(4));
    print("------------------------------");
    print("Total Marks   | " + totalMarks.toString().padLeft(4) + " / 400");
    print("Percentage    | " + percentage.toStringAsFixed(2).padLeft(5) + "%");
    print("==================================");
    print("Thank you for using the Marksheet Generator!");
  }
}
