program ex55;
{
Write a program that asks the user to enter the number of stars per row and the
number of rows to be displayed.
For example, entering 5 and 3 should display:

*****
*****
*****

}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  starsPerRow, rows, i, j : Integer;

begin
  Writeln('Let us print some stars!');
  Write('Enter the number of stars per row: ');
  Readln(starsPerRow);
  Write('Enter the number of rows: ');
  Readln(rows);

  // You can nest two loops inside each other;
  // the inner loop to count the number of stars,
  // and the outer loop to count the number of lines.

  for i := 1 to rows
    do
      begin
      for j := 1 to starsPerRow
        do
          Write('*');
      Writeln('');
      end;

  readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
