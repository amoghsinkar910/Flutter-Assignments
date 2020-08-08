import 'dart:io';

void main()
{
  List <int> a = List();
  print("Enter value of n");
  int n = int.parse(stdin.readLineSync());
  int i;
  for(i=0;i<n;i++)
  {
    int x = int.parse(stdin.readLineSync());
    a.add(x);
  }
  int max = -1;
  for(i=0;i<n;i++)
  {
    if(a[i]>max)
    {
      max = a[i];
    }
  }
  print("Maximum elemet is $max");
}