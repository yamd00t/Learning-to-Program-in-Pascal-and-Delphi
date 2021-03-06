program ex79;
{
A Latin Square of order n is an n * n array which contains the numbers 1, 2, 3,..., n
such that each row and column contain each number exactly once. For example the
following diagram shows a Latin Square of order 4. You can see that each row can be
obtained from the previous one by shifting the elements one place to the left.

         1   2   3   4
         2   3   4   1
         3   4   1   2
         4   1   2   3

Design and write a program to store such a Latin Square of a size given by the user.
The program should also display the Latin Square.

}

{ $APPTYPE CONSOLE }

uses
    SysUtils;

var
  Numbers : array[1.. 100] of Integer;
  row, column, choice, count : Integer;
  latinSquare : array[1..100, 1..100] of Integer;

begin
  write('This program stores and displays Latin Square of your choice. Enter a number: ');
  readln(choice);

  for count := 1 to choice
      do
        begin
          Numbers[count] := count;
          write(Numbers[count]);
        end;

  writeln;

  for row := 1 to choice
      do
        begin
        for column := 1 to choice
            do
              latinSquare[row, column] := column;
        end;

  for row := 1 to choice
      do
        begin
        writeln;
        for column := 1 to choice
            do
              write(latinSquare[row, column]);
        end;

readln;
end.


