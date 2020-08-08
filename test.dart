import 'dart:io';
main()
{
  stdout.writeln("Hello world");
  print("Enter any value");
  var x = stdin.readLineSync();
  print("You entered $x");
}