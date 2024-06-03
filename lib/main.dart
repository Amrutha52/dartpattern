import 'dart:io';

//2.write a dart program that accepts integers into a list until 0 is entered. Generate a separate list for odd and even numbers from that list and print the greatest number in the main list
// void main() {
//   // Initialize empty lists
//   final numbers = <int>[];
//   final evenNumbers = <int>[];
//   final oddNumbers = <int>[];
//   int? ourInput;
//
//   // Loop to accept integers
//   do {
//     print('Enter an integer :');
//     ourInput = int.tryParse(stdin.readLineSync() ?? '');
//     if (ourInput != null) {
//       numbers.add(ourInput);
//     }
//   } while (ourInput != 0);
//
//   // Separate even and odd numbers
//   for (final number in numbers) {
//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     } else {
//       oddNumbers.add(number);
//     }
//   }
//
//   // Find the greatest number
//   final greatestNumber = numbers.reduce((a, b) => a > b ? a : b);
//
//   // Print results
//   print('Main list: $numbers');
//   print('Even numbers list: $evenNumbers');
//   print('Odd numbers list: $oddNumbers');
//   print('Greatest number from main list: $greatestNumber');
// }

// To print star pattern

// void main()
// {
//   for(int i = 1; i <= 9; i++)
//     {
//       // To Print Spaces
//       for(int j=1; j<=9; j++)
//         {
//           print(' ');
//         }
//
//       // To print stars
//       for(int k = 1; k <= 2 * i - 1; k++)
//         {
//           print('*');
//         }
//
//       // Move to next line
//       print('*');
//     }
//
//  // To print the bottom part of the pattern
//   for(int i = 6; i >= 1; i--)
//     {
//       // To Print Spaces
//       for(int j = 1; j <= 7 - i; j++)
//         {
//           print(' ');
//         }
//       // To Print Stars
//       for(int k = 1; k <= 2 * i -1; k++)
//         {
//           print('*');
//         }
//     }
// }

// void main()
// {
//   for(int i = 1; i <= 9; i++)
//     {
//       for(int j = 1; j <= 9; j++)
//         {
//           if (j >= i)
//             print('*');
//           else
//             print(' ');
//         }
//       print('');
//     }
// }

// void main()
// {
//   int i, j, k, n = 9;
//   for(i =0; i <= n - 1; i++)
//     {
//       for(j = 0; j < i; j++)
//         {
//           print(' ');
//         }
//       for(k = i; k <= n - 1; k++)
//         {
//           print('*' + ' ');
//         }
//       print('');
//     }
// }

//3. Banking Application
// void main() {
//   // User data (replace with actual database or file storage for a real application)
//   var users = <String, String>{};
//
//   String presentUser;
//   double balance = 1000.00;
//
//   int choice;
//
//   do {
//     print("Welcome to the Banking Application!");
//     print("1. Register");
//     print("2. Login");
//     print("3. Exit");
//     print("Enter your choice: ");
//     choice = int.parse(readLineSync(stdin)!);
//
//     switch (choice) {
//       case 1:
//         register(users);
//         break;
//       case 2:
//         presentUser = login(users)!;
//         if (presentUser != null) {
//           loggedInMenu(balance, presentUser);
//         }
//         break;
//       case 3:
//         print("Goodbye! Thank you for using the Banking Application!");
//         break;
//       default:
//         print("Invalid choice. Please try again.");
//     }
//   } while (choice != 3);
// }
//
// void register(Map<String, String> users) {
//   print("Enter your desired username: ");
//   String username = readLineSync(stdin)!;
//   print("Enter your password: ");
//   String password = readLineSync(stdin)!;
//
//   if (users.containsKey(username)) {
//     print("Username already exists. Please try again.");
//   } else {
//     users[username] = password;
//     print("Registration successful!");
//   }
// }
//
// String? login(Map<String, String> users) {
//   print("Enter your username: ");
//   String username = readLineSync(stdin)!;
//   print("Enter your password: ");
//   String password = readLineSync(stdin)!;
//
//   if (users.containsKey(username) && users[username] == password) {
//     print("Login successful!");
//     return username;
//   } else {
//     print("Invalid username or password. Please try again.");
//     return null;
//   }
// }
//
// void loggedInMenu(double balance, String presentUser) {
//   int choice;
//
//   do {
//     print("Welcome, $presentUser!");
//     print("1. Bank Details");
//     print("2. Deposit");
//     print("3. Withdraw");
//     print("4. Logout");
//     print("Enter your choice: ");
//     choice = int.parse(readLineSync(stdin)!);
//
//     switch (choice) {
//       case 1:
//         print("Account Balance: $balance");
//         break;
//       case 2:
//         print("Enter the amount to deposit: ");
//         double depositAmount = double.parse(readLineSync(stdin)!);
//         balance += depositAmount;
//         print("Deposit successful!");
//         print("Account Balance: $balance");
//         break;
//       case 3:
//         print("Enter the amount to withdraw: ");
//         double withdrawAmount = double.parse(readLineSync(stdin)!);
//         if (withdrawAmount > balance) {
//           print("Insufficient funds.");
//         } else {
//           balance -= withdrawAmount;
//           print("Withdrawal successful!");
//           print("Account Balance: $balance");
//         }
//         break;
//       case 4:
//         print("Logged out successfully!");
//         presentUser = "";
//         break;
//       default:
//         print("Invalid choice. Please try again.");
//     }
//   } while (choice != 4);
// }
//
// String readLineSync(Stdin stdin) => stdin.readLineSync()!;

//1. Hollow hour glass

import 'dart:io';

// void main() {
//   int i, j, k, n = 9;
//
//   for (i = 0; i <= n - 1; i++) {
//     for (j = 0; j < i; j++) {
//       stdout.write(" ");
//     }
//     for (k = i; k <= n - 1; k++) {
//       stdout.write("*" + " ");
//     }
//     stdout.writeln("");
//   }
//   // for (i = n - 1; i >= 0; i--) {
//   //   for (j = 0; j < i; j++) {
//   //     stdout.write(" ");
//   //   }
//   //   for (k = i; k <= n - 1; k++) {
//   //     stdout.write("*" + " ");
//   //   }
//   //   stdout.writeln("");
//   // }
// }

// void main()
// {
//   print("Enter the no of rows");
//   int rows = readLineSync(stdin)!;
//
//   for(int i = 0; i <= rows - 1; i++)
//     {
//       for (int j = 0; j < rows - i; j++)
//         {
//           print(" ");
//         }
//     }
//
// }
//
// readLineSync(Stdin stdin)
// {
//   stdin.readByteSync();
// }

// void main() {
//   print("Enter number of rows: ");
//   int row = int.parse(stdin.readLineSync()!);
//
//   print("Generated Hollow Hourglass Pattern is: ");
//   // Upper-half
//   for (int i = row; i > 0; i--) {
//     for (int j = 0; j < row - i; j++) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j < 2 * i; j++) {
//       if (i == 1 || i == row || j == 1 || j == 2 * i - 1) {
//         stdout.write("*");
//       } else {
//         stdout.write(" ");
//       }
//     }
//     print("");
//   }
//   // Lower-half
//   for (int i = 2; i <= row; i++) {
//     for (int j = 0; j < row - i; j++) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j < 2 * i; j++) {
//       if (i == 1 || i == row || j == 1 || j == 2 * i - 1) {
//         stdout.write("*");
//       } else {
//         stdout.write(" ");
//       }
//     }
//     print("");
//   }
// }

import 'dart:io';

// void main() {
//   print("Enter number of rows: ");
//   int row = int.parse(stdin.readLineSync()!);
//
//   print("Generated Hollow Hourglass Pattern is: ");
//   // Upper-half
//   for (int i = row; i > 0; i--)
//   {
//     for (int j = 0; j < row - i; j++) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j < 2 * i; j++)
//     {
//       if (i == 1 ||  i == row || j == 2 * i - 1)
//         {
//           stdout.write("*");
//         }
//       else
//         {
//           stdout.write(" ");
//         }
//
//     }
//     print("");
//   }
//   // // Lower-half
//   for (int i = 2; i <= row; i++) {
//     for (int j = 0; j < row - i; j++) {
//       stdout.write(" ");
//     }
//     for (int j = 1; j < 2 * i; j++) {
//       if (i == 1 ||  i == row || j == 2 * i - 1)
//       {
//         stdout.write("*");
//       } else {
//         stdout.write(" ");
//       }
//     }
//     print("");
//   }
//
// }

// void main()
// {
//   print("Enter a limit : ");
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int j = 1; j <= limit; j++)
//     {
//       for(int i = 1; i <= limit; i++)
//         {
//           stdout.write("$i ");
//         }
//       print("");
//     }
// }
// Enter a limit :
// 5
// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5
// 1 2 3 4 5

// void main()
// {
//   print("Enter a limit : ");
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int j = 1; j <= limit; j++)
//     {
//       for(int i = 1; i <= limit; i++)
//         {
//           stdout.write("$j ");
//         }
//       print("");
//     }
// }
// Enter a limit :
// 5
// 1 1 1 1 1
// 2 2 2 2 2
// 3 3 3 3 3
// 4 4 4 4 4
// 5 5 5 5 5

// void main()
// {
//   print("Enter a limit:");
//   int col, sum=0;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//     {
//       for(col = 1; col <= limit; col++)
//         {
//           sum = sum + 1;
//           stdout.write("$sum ");
//         }
//       print("");
//     }
// }
//
// Enter a limit:
// 5
// 1 2 3 4 5
// 6 7 8 9 10
// 11 12 13 14 15
// 16 17 18 19 20
// 21 22 23 24 25

// void main()
// {
//   print("Enter a limit:");
//   int col;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//     {
//       for(col = 1; col <= limit; col++)
//         {
//           if(col == 1 || col == limit || col == row)
//             {
//               stdout.write("* ");
//             }
//
//         }
//       print("");
//     }
//
// }

// void main()
// {
//   print("Enter a limit:");
//   int col, sum=0;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//     {
//       for(col = 1; col <= limit; col++)
//         {
//           sum = sum + 1;
//           if(sum < 10)
//             {
//               stdout.write("0$sum ");
//             }
//           else
//             {
//               stdout.write("$sum ");
//             }
//         }
//       print("");
//     }
//
// }

// Enter a limit:
// 5
// 01 02 03 04 05
// 06 07 08 09 10
// 11 12 13 14 15
// 16 17 18 19 20
// 21 22 23 24 25


// void main()
// {
//   print("Enter a limit:");
//   int col;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//     {
//       for(col = 1; col <= limit; col++)
//         {
//
//               if(row == 1 || row == limit || col == 1 || col == limit)
//                 {
//                   stdout.write("* ");
//                 }
//               else
//                 {
//                   stdout.write("  ");
//                 }
//
//         }
//       print("");
//     }
//
// }
//
// Enter a limit:
// 5
// * * * * *
// *       *
// *       *
// *       *
// * * * * *


// void main()
// {
//   print("Enter a limit:");
//   int col;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//   {
//     for(col = 1; col <= limit; col++)
//     {
//
//       if(row == 1 || row == limit || col == 1 || col == limit || col == row)
//       {
//         stdout.write("* ");
//       }
//       else
//       {
//         stdout.write("  ");
//       }
//
//     }
//     print("");
//   }
//
// }

// Enter a limit:
// 5
// * * * * *
// * *     *
// *   *   *
// *     * *
// * * * * *
//
// Process finished with exit code 0

// Exam question 1 Hour glass
// void main()
// {
//   print("Enter a limit:");
//   int col;
//   int limit = int.parse(stdin.readLineSync()!);
//   for(int row = 1; row <= limit; row++)
//   {
//     for(col = 1; col <= limit; col++)
//     {
//
//       if(row == 1 || row == limit || col == row || col == limit - row + 1)
//       {
//         stdout.write("* ");
//       }
//       else
//       {
//         stdout.write("  ");
//       }
//
//     }
//     print("");
//   }
//
// }


void main()
{
  print("Enter a limit:");
  int col;
  int limit = int.parse(stdin.readLineSync()!);
  for(int row = 1; row <= limit; row++)
  {
    for(col = 1; col <= limit; col++)
    {

      if(row >= col)
      {
        stdout.write("* ");
      }
      else
      {
        stdout.write("  ");
      }

    }
    print("");
  }

}

// Enter a limit:
// 5
// *
// * *
// * * *
// * * * *
// * * * * *

