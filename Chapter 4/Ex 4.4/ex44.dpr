program ex44;
{
Write a program that asks the user to enter 2 numbers and displays the larger of the two
numbers.

Adapt program 4.4 to determine which is the largest of three given integers.
}

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Number1, Number2, Number3 : Integer;

begin
Write('Please enter a number: ');
Readln(Number1);
Write('Enter the second number: ');
Readln(Number2);
Write('Lastly, enter the third number: ');
Readln(Number3);

if ( (Number1 > Number2) and (Number1 > Number3) )
  then Writeln(Number1, ' is larger of the three.')
  else
    if ( (Number2 > Number1) and (Number2 > Number3) )
      then Writeln(Number2, ' is larger of the three.')
      else Writeln(Number3, ' is larger of the three.');

Readln;
  { TODO -oUser -cConsole Main : Insert code here }
end.
